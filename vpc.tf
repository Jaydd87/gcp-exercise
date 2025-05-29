resource "google_compute_network" "custom_vpc" {
  name                    = "custom-vpc"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet1" {
  name          = "subnet-1"
  ip_cidr_range = "10.0.1.0/24"
  region        = "us-central1"
  network       = google_compute_network.custom_vpc.id
}

resource "google_compute_subnetwork" "subnet2" {
  name          = "subnet-2"
  ip_cidr_range = "10.0.2.0/24"
  region        = "us-east1"
  network       = google_compute_network.custom_vpc.id
}

resource "google_compute_firewall" "allow-http-https" {
  name    = "allow-http-https"
  network = google_compute_network.custom_vpc.id

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }

  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "allow-ssh" {
  name    = "allow-ssh"
  network = google_compute_network.custom_vpc.id

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
}
