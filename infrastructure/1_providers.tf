terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.80.0"
    }
  }
  required_version = "~> 1.0.5"
}

provider "google" {
  project = var.project_id
  region  = var.project_region
  credentials = var.credentials
}