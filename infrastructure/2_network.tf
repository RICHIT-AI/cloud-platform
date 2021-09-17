resource "google_compute_network" "vpc" {
  name                    = "${var.gcp_project_suffix}-vpc"
  auto_create_subnetworks = "false"
}

resource "google_compute_subnetwork" "subnet" {
  name          = "${var.gcp_project_suffix}-subnet"
  region        = var.gcp_project_region
  network       = google_compute_network.vpc.name
  ip_cidr_range = "10.10.0.0/24"
}