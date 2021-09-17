resource "google_container_cluster" "primary" {
    name = "${var.gcp_project_suffix}-gke"
    location = var.gke_location

    remove_default_node_pool = true
    initial_node_count = 1

    network = google_compute_network.vpc.name
    subnetwork = google_compute_subnetwork.subnet.name
}

resource "google_container_node_pool" "primary_nodes" {
    name = "${google_container_cluster.primary.name}-node-pool"
    location = var.gke_location
    cluster = google_container_cluster.primary.name
    node_count = var.gke_primary_num_nodes

    node_config {
        oauth_scopes = [
            "https://www.googleapis.com/auth/logging.write",
            "https://www.googleapis.com/auth/monitoring",
        ]

        labels = {
            env = var.gcp_project_suffix
        }

        machine_type = var.gke_primary_nodeset_machine_type
        tags = ["gke-node", "${var.gcp_project_suffix}-gke"]
        metadata = {
            disable-legacy-endpoints = "true"
        }
    }
}

resource "google_container_node_pool" "secondary_nodes" {
    name = "${google_container_cluster.primary.name}-node-pool2"
    location = var.gke_location
    cluster = google_container_cluster.primary.name
    node_count = var.gke_secondary_num_nodes

    node_config {
        oauth_scopes = [
            "https://www.googleapis.com/auth/logging.write",
            "https://www.googleapis.com/auth/monitoring",
        ]

        labels = {
            env = var.gcp_project_suffix
        }

        machine_type = var.gke_secondary_nodeset_machine_type
        tags = ["gke-node", "${var.gcp_project_suffix}-gke"]
        metadata = {
            disable-legacy-endpoints = "true"
        }
    }
}
