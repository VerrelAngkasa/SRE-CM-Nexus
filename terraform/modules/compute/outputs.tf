output "cluster_endpoint" {
    value = module.gke.endpoint
}

output "cluster_sa" {
    value = module.gke.service_account
}