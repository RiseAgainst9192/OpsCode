provider "google" {
  credentials = "${file("account.json")}"
  project = "it-helpdesk-182606"
  region = "us-central1"
}
resource "google_compute_instance" "default" {
  name         = "ws2016-01"
  machine_type = "n1-standard-4"
  zone         = "us-central1-a"

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "windows-server-2016-dc-v20171010"
    }
  }

  // Local SSD disk
  scratch_disk {
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

  service_account {
    scopes = ["https://www.googleapis.com/auth/devstorage.read_only","https://www.googleapis.com/auth/logging.write","https://www.googleapis.com/auth/monitoring.write","https://www.googleapis.com/auth/servicecontrol","https://www.googleapis.com/auth/service.management.readonly","https://www.googleapis.com/auth/trace.append"]
  }
}
resource "google_compute_firewall" "allow-winrm" {  
    name = "allow-winrm"
    network = "default"

    allow {
        protocol = "tcp"
        ports = ["3389","5985","5986"]
    }

}
