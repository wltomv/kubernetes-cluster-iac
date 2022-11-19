variable "name" {
  default = "default-cluster"
}
variable "project" {
  default = ""
}
variable "region" {
  default = "us-east1"
}
variable "initial_node_count" {
  default = 1
}
variable "gke_num_nodes" {
  default     = 2
  description = "number of gke nodes"
}
variable "gke_username" {
  default     = ""
  description = "gke username"
}

variable "gke_password" {
  default     = ""
  description = "gke password"
}
variable "machine_type" {
  default = "n1-standard-2"
}
