resource "google_compute_instance" "vm" {
  name         = var.name
  machine_type = var.machine_type
  zone         = var.zone
  tags         = ["http-server"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }

  network_interface {
    network = "default"

    access_config {
    }
  }

  metadata_startup_script = "sudo apt-get update; sudo apt-get install -yq nginx"
}

resource "google_compute_firewall" "nginx_server_firewall" {
  name        = "nginx-server-firewall"
  network     = "default"
  target_tags = ["http-server"]

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }
}

output "server_ip" {
  value = google_compute_instance.vm.network_interface.0.access_config.0.nat_ip
}
