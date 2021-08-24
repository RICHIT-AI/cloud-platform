variable "project_name" {
  description = "Project Name"
}

variable "project_id" {
  description = "GCP Project ID"
}

variable "credentials" {
  description = "GCP Service Account"
}

variable "project_region" {
  description = "GCP Region"
}

variable "gke_location" {
  description = "GKE Location"
}

variable "gke_num_nodes" {
    default = 0
    description = "Number of GKE Nodes"
}