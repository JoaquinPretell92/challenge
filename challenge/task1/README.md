# Task 1

# Desarrollo del modulo kubernetes en terraform
---
```bash
### **Variables**
Terraform utiliza el archivo terraform.tfvars para validar las variables del componente a desplegar, en este caso, el kubernete en GCP.
Ejemplo del archivo terraform.tfvars para su despliegue:

ubication               = "us-central1" (Region del recurso desplegado.)

project                 = "challenge-294120" (Codigo del proyecto a deplegar GCP.)

credencial              = "challenge-294120-065283266c79.json" (Credencial en formato json del usuario final.)

kubernete_name          = "challenge" (Nombre del recurso desplegado.)

machine_type            = "e2-medium" (Flavor del nodo.)

initial_node_count      = 1 (Cantida de nodos que despliega el recurso.)

node_count              = 1 (Cantidad de nodos del pool.)

**Tener en cuenta que las siguientes variables no intervienen en las variables del script.**
```
# Desarrollo de la imagen docker
---
```bash
En la carpeta imagen se encuentran los archivos Dockerfile, mypythonapp.py y requeriments.txt, los cuales se utilizaron para desarrollar la aplicacion. 
```
# Archivo mypythonapp.yaml
---
```bash
El archivo mypythonapp.yaml hara el despliegue de la aplicacion sobre la ip publica del controlador de ingress.
```