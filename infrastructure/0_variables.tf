variable "gcp_project_id" {
  description = "GCP Project ID"
}

variable "gcp_project_suffix" {
  description = "GCP Resources Suffix"
}

variable "gcp_credentials" {
  description = "GCP Service Account"
}

variable "gcp_project_region" {
  description = "GCP Project Region"
}

variable "gke_location" {
  description = "GKE Location"
}

variable "gke_primary_num_nodes" {
    default = 1
    description = "GKE Primary NodeSet"
}

variable "gke_primary_nodeset_machine_type" {
  default = "n1-standard-1"
  description = "GKE Primary Machine Type"
}

variable "gke_secondary_num_nodes" {
    default = 0
    description = "GKE Secondary NodeSet"
}

variable "gke_secondary_nodeset_machine_type" {
  default = "n1-standard-1"
  description = "GKE Secondary Machine Type"
}