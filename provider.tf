provider "google" {
  project = var.project
  region  = var.region
}

resource "google_project_service" "run" {
  service = "run.googleapis.com"
}