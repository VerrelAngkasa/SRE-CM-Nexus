output "cluster_endpoint" {
    value = module.compute.cluster_endpoint
    sensitive = true
}

output "cluster_sa" {
    value = module.compute.cluster_sa
}