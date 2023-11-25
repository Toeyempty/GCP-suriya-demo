# google_client_config and kubernetes provider must be explicitly specified like the following.
data "google_client_config" "default" {}
provider "kubernetes" {
  host                   = "https://${module.gke.endpoint}"
  token                  = data.google_client_config.default.access_token
  cluster_ca_certificate = base64decode(module.gke.ca_certificate)
}
module "gke" {
  source                     = "terraform-google-modules/kubernetes-engine/google//modules/private-cluster"
  project_id                 = var.project_id
  name                       = var.name_cluster
  kubernetes_version         = var.kubernetes_version
  region                     = var.region
  zones                      = var.gke_zones
  network                    = var.vpc_name
  subnetwork                 = var.subnets_name
  ip_range_pods              = var.ip_range_pods
  ip_range_services          = var.ip_range_services
  configure_ip_masq          = var.configure_ip_masq
  http_load_balancing        = var.http_load_balancing
  horizontal_pod_autoscaling = var.horizontal_pod_autoscaling
  filestore_csi_driver       = var.filestore_csi_driver
  enable_private_endpoint    = var.enable_private_endpoint
  enable_private_nodes       = var.enable_private_nodes
  remove_default_node_pool   = var.remove_default_node_pool
  logging_service            = var.logging_service
  monitoring_service         = var.monitoring_service
  regional                   = var.regional
  maintenance_start_time	   = var.maintenance_start_time
  default_max_pods_per_node  = var.default_max_pods_per_node
  deletion_protection        = var.deletion_protection
  node_pools                 = var.node_pools
}