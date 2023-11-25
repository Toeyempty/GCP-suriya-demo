output "name" {
  description = "Cluster name"
  value       = module.gke.name
}

output "endpoint" {
  description = "Cluster endpoint"
  value       = module.gke.endpoint
  sensitive   = true
}

output "master_version" {
  description = "Current master kubernetes version"
  value       = module.gke.master_version
}

output "node_pools_names" {
  description = "List of node pools names"
  value       = module.gke.node_pools_names
}
