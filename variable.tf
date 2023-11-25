## Default
variable   "credentials_file_path"{}
variable   "project_id" {}
variable   "region" {}
variable   "zone" {}

## Network
variable   "network_name" {}
variable   "routing_mode" {}
variable   "subnets" {}
variable   "secondary_ranges" {}

## GKE Cluster
variable "name_cluster" {}
variable "vpc_name" {}
variable "subnets_name" {}
variable "ip_range_pods" {}
variable "ip_range_services" {}
variable "configure_ip_masq" {}
variable "http_load_balancing" {}
variable "horizontal_pod_autoscaling" {}
variable "filestore_csi_driver" {}
variable "enable_private_endpoint" {}
variable "enable_private_nodes" {}
variable "remove_default_node_pool" {}
variable "logging_service" {}
variable "monitoring_service" {}
variable "regional" {}
variable "maintenance_start_time" {}
variable "default_max_pods_per_node" {}
variable "deletion_protection" {}
variable "node_pools" {}