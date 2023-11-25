terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.7.0"
    }
  }
}

# local = {
#     "project"       = "suriya-demo"
#     "environment"   = "dev"
#     "terraform"     = "true"
#   }

module "vpc" {
  source                      = "./network"
  project_id                  = var.project_id
  network_name                = var.network_name
  routing_mode                = var.routing_mode
  subnets                     = var.subnets
  secondary_ranges            = var.secondary_ranges
}

module "gke_cluster" {
  source                        = "./gke_cluster"
  project_id                    = var.project_id
  name_cluster                  = var.name_cluster
  region                        = var.region
  zone                          = var.zone
  vpc_name                      = var.network_name
  subnets_name                  = var.subnets_name
  ip_range_pods                 = var.ip_range_pods
  ip_range_services             = var.ip_range_services
  configure_ip_masq             = var.configure_ip_masq
  http_load_balancing           = var.http_load_balancing
  horizontal_pod_autoscaling    = var.horizontal_pod_autoscaling
  filestore_csi_driver          = var.filestore_csi_driver
  enable_private_endpoint       = var.enable_private_endpoint
  enable_private_nodes          = var.enable_private_nodes
  remove_default_node_pool      = var.remove_default_node_pool
  logging_service               = var.logging_service
  monitoring_service            = var.monitoring_service
  regional                      = var.regional
  maintenance_start_time        = var.maintenance_start_time
  default_max_pods_per_node     = var.default_max_pods_per_node
  deletion_protection           = var.deletion_protection
  node_pools                    = var.node_pools
}
