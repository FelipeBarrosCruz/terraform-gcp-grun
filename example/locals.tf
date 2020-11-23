locals {
  region  = "us-central1"
  project = "terraform-gcp-grun"
  name    = "example"
  envs    = {
    SERVICE_NAME = local.name
  }
}
