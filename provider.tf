terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "7.20.0"
    }
  }
}

terraform {
  backend "gcs" {
    bucket = "my-terraform-bucket-121273"
    prefix = "terraform/state"
  }
}

provider "google" {
  # Configuration options
  project = var.project_id
  region = var.region
  credentials = file (var.credential_file_path)
}