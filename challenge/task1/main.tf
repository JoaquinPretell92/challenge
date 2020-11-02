provider "google" {
  credentials = file(var.credencial)
  project     = var.project
  region      = var.ubication
}

resource "google_container_cluster" "primary" {
  name     = var.kubernete_name
  location = var.ubication
  remove_default_node_pool = local.default_node_pool
  initial_node_count       = var.initial_node_count

  master_auth {
    username = ""
    password = ""

    client_certificate_config {
      issue_client_certificate = local.certificate
    }
  }
}

resource "google_container_node_pool" "primary_preemptible_nodes" {
  name       = var.kubernete_name
  location   = var.ubication
  cluster    = google_container_cluster.primary.name
  node_count = var.node_count

  node_config {
    preemptible  = local.preemptible
    machine_type = var.machine_type

    metadata = {
      disable-legacy-endpoints = local.disable_legacy_endpoints
    }

    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}
