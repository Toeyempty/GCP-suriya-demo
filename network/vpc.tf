module "vpc" {
    source  = "terraform-google-modules/network/google"
    version = "8.0"

    project_id          = var.project_id
    network_name        = var.network_name
    routing_mode        = var.routing_mode
    subnets             = var.subnets
    secondary_ranges    = var.secondary_ranges
}

module "cloud_nat" {
  source                             = "terraform-google-modules/cloud-nat/google"
  version                            = "5.0.0"

  project_id                         = var.project_id
  region                             = var.region
  router                             = google_compute_router.router.name
  name                               = var.cloud_nat_name
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"
}

resource "google_compute_router" "router" {
  project = var.project_id
  name    = var.route_name
  network = module.vpc.network_name
  region  = var.region
}
