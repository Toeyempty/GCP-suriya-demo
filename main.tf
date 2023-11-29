terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.0.0"
    }
  }
}


module "network" {
  source                        = "./network"
  project_id                    = var.project_id
  network_name                  = var.network_name
  routing_mode                  = var.routing_mode
  subnets                       = var.subnets
  secondary_ranges              = var.secondary_ranges
  route_name                    = var.route_name
  cloud_nat_name                = var.cloud_nat_name
  region                        = var.region
}

module "dns" {
  source                        = "./dns"
  project_id                    = var.project_id
  dns_type                      = var.dns_type
  dns_name                      = var.dns_name
  dns_domain                    = var.dns_domain
}

module "gke_cluster" {
  source                        = "./gke_cluster"
  project_id                    = var.project_id
  name_cluster                  = var.name_cluster
  kubernetes_version            = var.kubernetes_version
  region                        = var.region
  gke_zones                     = var.gke_zones
  vpc_name                      = module.network.vpc_name
  subnets_name                  = var.subnets_name
  ip_range_pods                 = var.ip_range_pods
  ip_range_services             = var.ip_range_services
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
  cluster_dns_provider          = var.cluster_dns_provider
  cluster_dns_scope             = var.cluster_dns_scope
  cluster_dns_domain            = module.dns.domain
}
