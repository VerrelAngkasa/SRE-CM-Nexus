# Provision Google Kubernetes Engine for Nexus App
data "google_client_config" "default" {}

provider "kubernetes" {
  host                   = "https://${module.gke.endpoint}"
  token                  = data.google_client_config.default.access_token
  cluster_ca_certificate = base64decode(module.gke.ca_certificate)
}

module "gke" {
  source                     = "terraform-google-modules/kubernetes-engine/google"

  project_id                 = "sre-cm-nexus"
  name                       = "my-sre-cluster"
  region                     = "asia-southeast2"
  zones                      = ["asia-southeast2-a"]

  network                    = "default"
  subnetwork                 = "default"
  ip_range_pods              = ""
#   ip_range_services          = ""
  
  http_load_balancing             = false
  network_policy                  = false
  dns_cache                       = false

  horizontal_pod_autoscaling      = false
  enable_vertical_pod_autoscaling = false

  filestore_csi_driver            = false

  create_service_account          = true

  node_pools = [
    {
        name                        = "default-node-pool"
        machine_type                = "n1-standard-1"
        node_locations              = "asia-southeast2-a"
        initial_node_count          = 1
        min_count                   = 1 
        max_count                   = 1
        node_count                  = 1

        autoscaling                 = false

        local_ssd_count             = 0
        spot                        = false
        disk_size_gb                = 15
        disk_type                   = "pd-standard"

        image_type                  = "COS_CONTAINERD"
        enable_gcfs                 = false
        enable_gvnic                = false
        logging_variant             = "DEFAULT"
        auto_repair                 = true
        auto_upgrade                = true

        preemptible                 = true
    #   accelerator_count           = 1
    #   accelerator_type            = "nvidia-l4"
    #   gpu_driver_version          = "LATEST"
    #   gpu_sharing_strategy        = "TIME_SHARING"
    #   max_shared_clients_per_gpu = 2
    },
  ]

  node_pools_oauth_scopes = {
    all = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]
  }

  node_pools_labels = {
    all = {}

    default-node-pool = {
      default-node-pool = true
    }
  }

  node_pools_metadata = {
    all = {}

    default-node-pool = {
      node-pool-metadata-custom-value = "my-node-pool"
    }
  }

  node_pools_taints = {
    all = []

    default-node-pool = [
      {
        key    = "default-node-pool"
        value  = true
        effect = "PREFER_NO_SCHEDULE"
      },
    ]
  }

  node_pools_tags = {
    all = []

    default-node-pool = [
      "default-node-pool",
    ]
  }
}