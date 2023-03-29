variable "gcp_project_id" {
  type        = "string"
  description = "The GCP project for project 1."
}
variable "gcp_region" {
  type        = "string"
  description = "The GCP region to apply this config to."
}
variable "gcp_zone" {
  type        = "string"
  description = "The GCP zone to apply this config to."
}
variable "project_2_id" {
  type        = "string"
  description = "The GCP project ID for platform project."
}

variable "project_3_id" {
  type        = "string"
  description = "The GCP project ID for app infra project."
}

variable "service_account_key_file" {
  type = string
  description = "key file location"
}
