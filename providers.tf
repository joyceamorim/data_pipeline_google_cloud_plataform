provider "google" {
  project = var.project_id
  region  = var.region
}

terraform {
  backend "gcs" {
    bucket = "stack-state-gcs-datapipeline01"
    prefix = "terraform/state"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.67.0"
    }
  }
}