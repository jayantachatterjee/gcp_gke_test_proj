resource "google_container_cluster" "my_gke_cluster" {
  name     = var.gke_name
  location = var.region
  enable_autopilot = true

  deletion_protection = false

  //remove_default_node_pool = true
}