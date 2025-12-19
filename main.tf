################
## mains file ##
################
terraform {
  required_version = ">=1.5.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

resource "google_compute_instance" "gcp-vm" {
  name         = var.vm_name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2204-lts"
      size  = 20
      type  = "pd-balanced"
    }
  }
  network_interface {
    network = "default"

    access_config {
      #publc IP
    }
  }

  tags = ["terraform", "gcp-vm"]

  labe = {
    environment = "dev"
    owner       = "terrafrom"
  }
}