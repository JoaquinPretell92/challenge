variable ubication {
  description = "Region del del proyecto desplegado."
  type = string
}
variable project {
   description = "Codigo del proyecto a deplegar GCP."
   type = string
}
variable credencial {
   description = "Credencial en formato json del usuario final."
   type = string
}
variable name {
  description = "Nombre de la maquina virtual."
   type = string
}
variable machine_type {
  description = "Flavor de la maquina virtual."
   type = string
}
variable zone {
  description = "Ubicacion del recurso desplegado."
   type = string
}
variable image {
  description = "Sistema operativo instalado en la maquina virtual."
   type = string
}
variable startup_script {
  description = "Ruta del archivo startup_script."
   type = string
}


locals {

network = "default"

}