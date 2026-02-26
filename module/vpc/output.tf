output "network_id" {
    value = google_compute_network.my_vpc.id
}

output "public_subnet_id" {
    value = google_compute_subnetwork.my_public_subnet.id
}

output "private_subnet_id" {
    value = google_compute_subnetwork.my_private_subnet.id
}