terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.36.0"
    }
  }
}

provider "google" {
  project = var.project_name
  region  = var.region
  credentials = file(var.credentials)
}

resource "google_storage_bucket" "demo-bucket" {
  name          = var.bucket_name
  location      = var.location
  force_destroy = true
  storage_class = var.storage_class

  lifecycle_rule {
    condition {
      age = 3
    }
    action {
      type = "Delete"
    }
  }

  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}