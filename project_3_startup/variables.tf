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
variable "project_1_id" {
  type        = "string"
  description = "The GCP project ID for App admin project."
}

variable "project_2_id" {
  type        = "string"
  description = "The GCP project ID for platform project."
}