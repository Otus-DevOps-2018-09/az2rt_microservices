provider "google" {
  version = "1.4.0"
  project = "docker-225720"
  region = "europe-west1"
}

resource "google_compute_instance" "app" {

  metadata {
    ssh-keys = "appuser:${file("~/.ssh/appuser.pub")}"
  }

  zone = "europe-west1-b"

  "boot_disk" {
    initialize_params {
      image = "ubuntu-1604-xenial-v20181204"
      size = "100"
    }

  }
  machine_type = "g1-small"
  name = "gitlab-ci"
  "network_interface" {
    network = "default"
    access_config {}
  }

}

resource "google_compute_firewall" "firewall_ssh" {
  name        = "default-allow-ssh-2"
  network     = "default"

  allow {
    protocol = ["tcp", "http", "https"]
    ports    = ["22", "80"]
  }

  source_ranges = ["0.0.0.0/0"]
}