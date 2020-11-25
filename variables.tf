variable "project" {
  type = string
}

variable "region" {
  type = string
}

variable "name" {
  type        = string
  description = "The service name"
}

variable "envs" {
  type        = map
  description = "The map of environemnt variables"
  default     = {}
}

variable "service_account_name" {
  type        = string
  description = "The service account name to authorize the google_cloud_run_service"
}