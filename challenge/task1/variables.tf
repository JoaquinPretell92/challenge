variable ubication {
  description = "Region del recurso desplegado."
  type = string
}
variable project {
   description = "Codigo del proyecto a deplegar GCP."
   type = string
}
variable credencial{
   description = "Credencial en formato json del usuario final."
   type = string
}
variable kubernete_name{
   description = "Nombre del recurso desplegado."
   type = string
}
variable machine_type{
   description = "Flavor del nodo."
   type = string
}
variable initial_node_count{
   description = "Cantida de nodos que despliega el recurso."
   type = string
}
variable node_count{
   description = "Cantidad de nodos del pool."
   type = string
}

locals {

certificate                    = false 
default_node_pool              = true
preemptible                    = true
disable_legacy_endpoints       = "true"

}