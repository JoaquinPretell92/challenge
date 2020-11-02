#!/bin/bash
case $1 in
CREATE)
##Creacion de Kubernetes
echo -n "Colocar la credencial del usuario:"
read credencial
gcloud auth activate-service-account --key-file=$credencial
terraform init
terraform apply -auto-approve
;;
DESTROY)
terraform destroy -auto-approve
;;
OUTPUT)
terraform plan 
;;
*)
esac

