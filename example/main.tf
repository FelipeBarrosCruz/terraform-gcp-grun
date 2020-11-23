module "grun_example" {
  source  = "git@github.com:FelipeBarrosCruz/terraform-gcp-grun.git?ref=main"
  project = local.project
  region  = local.region
  name    = local.name
  envs    = local.envs
}
