#!/bin/bash
case $1 in
CREATE)
##Creacion de Kubernetes
echo -n "Colocar la credencial del usuario:"
read credencial
echo -n "Colocar el codigo del proyecto:"
read proyecto
echo -n "Nombre del Kubernete:"
read kubernete
echo -n "Nombre de la aplicacion:"
read application
echo -n "Archivo yaml para despliegue de aplicacion:"
read archivo
echo -n "Nombre del ingress controller:"
read controller
gcloud auth activate-service-account --key-file=$credencial
terraform init
terraform apply -auto-approve
##Creacion de imagen
cd imagen
docker build -t $application .
docker tag $application gcr.io/$proyecto/$application
gcloud auth configure-docker
docker push gcr.io/$proyecto/$application
cd ..
##Creacion de aplicacion
gcloud container clusters get-credentials $kubernete --region us-central1 --project $proyecto
helm init
kubectl create deployment $application --image=gcr.io/$proyecto/$application
kubectl expose deployment $application --port=8080 --target-port=8080
##Instalacion Ingress Controller NGINX
kubectl get deployments -n kube-system
git clone https://github.com/nginxinc/kubernetes-ingress/
cd kubernetes-ingress/deployments/helm-chart
git checkout v1.9.0
helm repo add nginx-stable https://helm.nginx.com/stable
helm repo update
kubectl create -f crds/
kubectl create clusterrolebinding tiller --clusterrole cluster-admin --serviceaccount=kube-system:tiller
helm init --service-account tiller --upgrade
kubectl --namespace kube-system create serviceaccount tiller
helm install --name $controller stable/nginx-ingress
##Despliegue de aplicación
cd ..
cd ..
cd .. 
kubectl apply -f $archivo
;;
DESTROY)
terraform destroy -auto-approve
;;
OUTPUT)
terraform plan 
;;
*)
esac

