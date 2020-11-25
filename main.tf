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
      service_account_name = var.service_account_name
      containers {
        image = "gcr.io/${var.project}/${var.name}"

        dynamic "env" {
          for_each = var.envs

          content {
            name  = env.key
            value = env.value
          }
        }
      }
    }
  }


}
