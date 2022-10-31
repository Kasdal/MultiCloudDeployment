resource "google_compute_network" "myvpc" {
  name                    = var.vpc_gcp
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet" {
  name          = var.project_id
  ip_cidr_range = "10.0.1.0/24"
  region        = var.gcp_region
  network       = google_compute_network.myvpc.id  
}