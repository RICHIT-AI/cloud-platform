variable "project_name" {
  description = "Project Name"
}

variable "project_id" {
  description = "GCP Project ID"
}

variable "credentials" {
  description = "GCP Service Account"
}

variable "region" {
  description = "GCP Region"
}

variable "zone" {
  description = "GCP Zone"
}

variable "gke_num_nodes" {
    default = 2
    description = "Number of GKE Nodes"
}