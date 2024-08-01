locals {
  services_apis = [
    "iam.googleapis.com",
    "storage.googleapis.com",
    "container.googleapis.com",
    "bigquery.googleapis.com",
    "artifactregistry.googleapis.com"
  ]
}
provider "google" {
  project = "river-psyche-430901-i1"
  region  = "US-CENTRAL1"
}
