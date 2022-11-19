resource "google_container_cluster" "primary" {
  name        = "${var.name}-gke"
  project     = var.project
  description = "GKE Cluster"
  location    = var.region

  enable_legacy_abac       = true
  remove_default_node_pool = true
  initial_node_count       = var.initial_node_count

}

resource "google_container_node_pool" "primary_nodes" {
  name       = "${google_container_cluster.primary.name}-node-pool"
  project    = var.project
  location   = var.region
  cluster    = google_container_cluster.primary.name
  node_count = var.gke_num_nodes

  node_config {
    #preemptible  = true
    machine_type = var.machine_type

    metadata = {
      "disable-legacy-endpoints" = "true"
    }
    tags = ["gke-node", "${var.project}-gke"]
    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]
  }
}
