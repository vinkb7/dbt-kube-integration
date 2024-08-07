resource "google_container_cluster" "this" {
  name     = "dbt-cluster"
  location = "us-central1"

  network    = google_compute_network.this.name
  subnetwork = google_compute_subnetwork.this.id

  private_cluster_config {
    enable_private_endpoint = false
    enable_private_nodes    = true
  }

  # Enable Autopilot for this cluster
  enable_autopilot = true

  # Configuration of cluster IP allocation for VPC-native clusters
  ip_allocation_policy {
    cluster_secondary_range_name  = "pods"
    services_secondary_range_name = "services"
  }

  # Configuration options for the Release channel feature, which provide more control over automatic upgrades of your GKE clusters.
  release_channel {
    channel = "REGULAR"
  }
}
