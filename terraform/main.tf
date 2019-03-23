resource "google_storage_bucket" "maxprettyjohns-states" {
  name     = "maxprettyjohns-states"
  location = "EU"
}

resource "google_compute_instance" "vm_instance" {
  name         = "terraform-instance"
  machine_type = "f1-micro"
  tags = ["webserver"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    # A default network is created for all GCP projects
    network       = "default"
    access_config = {
    }
  }
}

resource "google_compute_firewall" "default" {
  name    = "terraform-instance"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }
}
