## Network
output "vpc_name" {
  description = "Name of the VPC"
  value = "${module.network.vpc_name}"
}

output "network_id" {
  description = "Name of the Network_ID"
  value       = "${module.network.network_id}"
}

output "subnets" {
  description = "Subnet"
  value       = "${module.network.subnets}"
}

output "subnets_names" {
  description = "Name of the subnets"
  value       = "${module.network.subnets_names}"
}

output "project_id" {
  description = "VPC project id"
  value       = module.network.project_id
}


## DNS
output "domain" {
  description = "The DNS zone domain."
  value       = "${module.dns.domain}"
}

output "dns_name" {
  description = "The DNS zone name."
  value       = "${module.dns.name}"
}

output "name_servers" {
  description = "The DNS zone name servers."
  value       = "${module.dns.name_servers}"
}

output "type" {
  description = "TThe DNS zone type."
  value       = "${module.dns.type}"
}

## GKE-Cluster
output "gke_name" {
  description = "Cluster name"
  value       = module.gke_cluster.name
}

output "endpoint" {
  description = "Cluster endpoint"
  value       = module.gke_cluster.endpoint
  sensitive   = true
}

output "master_version" {
  description = "Current master kubernetes version"
  value       = module.gke_cluster.master_version
}

output "node_pools_names" {
  description = "List of node pools names"
  value       = module.gke_cluster.node_pools_names
}
