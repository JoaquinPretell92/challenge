# challenge
# Task 1
1. Crear un script bash o makefile, que acepte parámetros (CREATE, DESTROY y OUTPUT) con los siguientes pasos:
2. Exportar las variables necesarias para crear recursos en GCP (utilizar las credenciales previamente descargadas).
3. Utilizar terraform o pulumi para crear un Cluster de Kubernetes de un solo nodo (GKE).
4. Instalar ingress controller en el Cluster de k8s.
5. Crear una imagen docker para desplegar una aplicación tipo RESTFUL API
6. Subir la imagen el registry propio del proyecto gcp ej: gcr.io/$MYPROJECT/mypythonapp.
7. Desplegar la imagen con los objetos mínimos necesarios (no utilizar pods ni replicasets directamente).
8. El servicio debe poder ser consumido públicamente.

###Uso del script
---
```bash
El script utiliza los siguiente parametros:

./script.sh CREATE (Ejecuta los pasos 2 al 8) (Antes de usar CREATE leer el README dentro de la carpeta task1)

./script.sh DESTROY (Destruye el Kubernete)

./script.sh OUTPUT (Genera un plan de terraform con la informacion del Kubernete)

Se pondra un ejemplo de cada caso en el siguiente parrafo

```
###Utilizando CREATE, DESTROY y OUTPUT
---
```bash
1. Cuando utilicemos CREATE para el script se necesitara definir variables para el uso de este, EJEMPLO:

Colocar la credencial del usuario:

challenge-294120-065283266c79.json

Colocar el codigo del proyecto:

challenge-294120

Nombre del Kubernete:

challenge

Nombre de la aplicacion:

mypythonapp

Archivo yaml para despliegue de aplicacion:

mypythonapp.yaml

Nombre del ingress controller

nginx-ingress-challenge

2. Para el uso de DESTROY y OUTPUT no sera necesario definir ninguna variable.
```

# Task 2
1. Crear un script bash o makefile, con los siguientes pasos:
2. Exportar las variables necesarias para crear recursos en GCP (utilizar las credenciales previamente descargadas).
3. Crear una VM basada en Centos
4. Instalar Jenkins en la VM (Puede ser Instalado con Docker o como Servicio, pero es importante que la instalación se realice a través de un playbook de ansible)
5. Instalar plugins estándar de pipeline,
6. Crear un sharedlib que pueda compilar maven.
7. Crear un Job que haga uso del sharedlib para compilar exitosamente un proyecto java simple tipo “Hello World”
8. El repositorio para la aplicación de Java debe ser publico.

###Uso del script
---
```bash
El script utiliza los siguiente parametros:

./script.sh CREATE (Ejecuta los pasos 2 al 8) (Antes de usar CREATE leer el README dentro de la carpeta task1)

./script.sh DESTROY (Destruye la VM)

./script.sh OUTPUT (Genera un plan de terraform con la informacion de la maquina virtual)

Se pondra un ejemplo de cada caso en el siguiente parrafo

```
###Utilizando CREATE, DESTROY y OUTPUT
---
```bash
1. Cuando utilicemos CREATE para el script se necesitara definir variables para el uso de este, EJEMPLO:

Colocar la credencial del usuario:

challenge-294120-065283266c79.json

2. Para el uso de DESTROY y OUTPUT no sera necesario definir ninguna variable.
```
