
output "vpc_name" {
  description = "Name of the VPC"
  value       = module.vpc.network_name
}

output "network_id" {
  description = "Name of the Network_ID"
  value       = module.vpc.network_id
}

output "subnets" {
  description = "Subnet"
  value       = module.vpc.subnets
}

output "subnets_names" {
  description = "Name of the subnets"
  value       = module.vpc.subnets_names
}
