terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 6.37.0, < 8.0.0"
    }
  }

  backend "gcs" {
    bucket = "nexus-terraform"
    prefix = "state"
  }
}

provider "google" {
    project = "sre-cm-nexus"
    region = "asia-southeast2"
}

module "storage" {
    source = "../../modules/storage"

    cluster_sa = module.compute.cluster_sa
}

module "compute" {
    source = "../../modules/compute"
}