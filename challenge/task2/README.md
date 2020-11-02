# Task 2

# Desarrollo del modulo virtual machine en terraform
---
```bash
### **Variables**
Terraform utiliza el archivo terraform.tfvars para validar las variables del componente a desplegar, en este caso, una maquina virtual en GCP.
Ejemplo del archivo terraform.tfvars para su despliegue:

ubication               = "us-central1" (Region del recurso desplegado.)

project                 = "challenge-294120" (Codigo del proyecto a deplegar GCP.)

credencial              = "challenge-294120-065283266c79.json" (Credencial en formato json del usuario final.)

name                    = "centos" (Nombre del recurso desplegado.)

machine_type            = "n1-standard-1" (Flavor de la maquina virtual.)

zone                    = "us-central1-a" (Ubicacion del recurso desplegado.)

image                   = "centos-cloud/centos-7" (Sistema operativo instalado en la maquina virtual.)

startup_script          = "/mnt/c/Users/pc/Desktop/challenge/task2/jenkins.sh" (Ruta del archivo startup_script.)

```
# Desarrollo de la instalacion de Jenkins Mediante Ansible Playbooks
---
```bash
El archivo jenkins.sh es un startup script, asociado al despliegue de la maquina virtual, el cual contiene los comandos para realizar la instalacion de Jenkins. Cuando el despliegue del componente haya terminado, el script continuara su instalacion. 
```
