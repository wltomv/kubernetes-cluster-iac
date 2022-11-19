terraform {
  backend "gcs" {
    credentials = "./credentials/service-account.json"
    bucket      = "software-tf-state-production"
    prefix      = "terraform/state"
  }
}
