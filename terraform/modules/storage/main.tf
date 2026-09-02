# Provision Google Cloud Storage Bucket
locals {
    project_id = "sre-cm-nexus"
    bucket_name = "nexus-sre-bucket"
}

module "gcs_buckets" {
  source  = "terraform-google-modules/cloud-storage/google"
  version = "~> 12.3"

  project_id  = local.project_id
  names       = [ local.bucket_name ]

  location    = "asia-southeast2"

  set_admin_roles = true
  admins = ["user:verrelangkasa20@gmail.com"]

  versioning = { first = true }
}