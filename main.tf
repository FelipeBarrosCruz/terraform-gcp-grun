resource "google_cloud_run_service" "default" {
  name                       = var.name
  location                   = var.region
  autogenerate_revision_name = true

  lifecycle {
    ignore_changes = [
      template[0].spec[0].containers[0].image
    ]
  }

  template {
    spec {
      containers {
        image = "gcr.io/${var.project}/${var.name}"
        env {
          name  = "NODE_ENV"
          value = "production"
        }
      }
    }
  }

  depends_on = [google_project_service.run]
}
