# https://registry.terraform.io/providers/hashicorp/google/latest/docs
provider "google" {
  credentials = file("./credentials/service-account.json")
  project     = var.project
  region      = var.region
}
