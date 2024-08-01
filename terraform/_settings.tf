terraform {
  backend "gcs" {
    bucket = "tform-kube-dbt-demo"
    prefix = "state"
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.43.1"
    }
  }
}

locals {
  project = "river-psyche-430901-i1"
  region  = "us-central1"
}

provider "google" {
  project = local.project
  region  = local.region
}
