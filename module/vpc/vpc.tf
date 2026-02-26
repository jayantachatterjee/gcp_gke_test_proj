resource "google_compute_network" "my_vpc" {
    name                    = var.vpc_name
    auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "my_public_subnet" {
    name          = "my-public-subnet"
    ip_cidr_range = var.public_subnet_cidr
    region        = "us-central1"
    network       = google_compute_network.my_vpc.id
}

resource "google_compute_subnetwork" "my_private_subnet" {
    name          = "my-private-subnet"
    ip_cidr_range = var.private_subnet_cidr
    region        = "us-central1"
    network       = google_compute_network.my_vpc.id

    private_ip_google_access = true
}