module "gcloud" {
  source  = "terraform-google-modules/gcloud/google"
  version = "~> 3.0.1"

  platform = "linux"

  create_cmd_entrypoint    = "gcloud"
  create_cmd_body          = "builds submit --config ${path.module}/cloudbuild.yaml --project ${var.gcp_project_id} --substitutions _PROJECT_ID=${var.gcp_project_id}"
  skip_download            = false
  upgrade                  = false
  gcloud_sdk_version       = "358.0.0"
  service_account_key_file = var.service_account_key_file
}
