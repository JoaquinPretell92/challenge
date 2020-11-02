provider "google" {
  credentials = file(var.credencial)
  project     = var.project
  region      = var.ubication
}
  
resource "google_compute_instance" "centos" {
  name         = var.name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.image
    }
  }


  network_interface {
    network = local.network

    access_config {
      // Ephemeral IP
    }
  }
  metadata_startup_script = file(var.startup_script)
  
}