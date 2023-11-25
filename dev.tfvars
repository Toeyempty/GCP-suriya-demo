region                      = "asia-southeast1"
project_id                  = "suriya-demo"
credentials_file_path       = "./credential/suriya-demo-77de251688a0.json"

## Network
network_name                = "default-vpc"
zones                       = "asia-southeast1-a"
route_name                  = "default-route"
cloud_nat_name              = "default-nat"
routing_mode                = "GLOBAL"
    subnets = [
        {
            subnet_name           = "subnet-01"
            subnet_ip             = "10.10.0.0/22"
            subnet_region         = "asia-southeast1"
        },
        {
            subnet_name           = "subnet-02"
            subnet_ip             = "10.10.8.0/22"
            subnet_region         = "asia-southeast1"
        },
        {
            subnet_name           = "subnet-03"
            subnet_ip             = "10.10.16.0/22"
            subnet_region         = "asia-southeast1"
        }
    ]
    secondary_ranges = {
        subnet-01 = [
            {
                range_name    = "subnet-01-secondary-01"
                ip_cidr_range = "10.10.4.0/24"
            },
            {
                range_name    = "subnet-01-secondary-02"
                ip_cidr_range = "10.10.5.0/24"
            },
        ]
        subnet-02 = [
            {
                range_name    = "subnet-02-secondary-01"
                ip_cidr_range = "10.10.12.0/24"
            },
            {
                range_name    = "subnet-02-secondary-02"
                ip_cidr_range = "10.10.13.0/24"
            },
        ]
        subnet-03 = [
            {
                range_name    = "subnet-03-secondary-01"
                ip_cidr_range = "110.10.20.0/24"
            },
            {
                range_name    = "subnet-03-secondary-02"
                ip_cidr_range = "10.10.21.0/24"
            },
        ]
    }

## DNS
  dns_type                    = "private"
  dns_name                    = "suriya-demo.com"
  dns_domain                  = "suriya-demo.com"

## GKE CLuster
  name_cluster                 = "suriya-demo-cluster"
  kubernetes_version           = "1.27"
  gke_zones                    = ["asia-southeast1-a"]
  subnets_name                 = "subnet-01"
  ip_range_pods                = "subnet-01-secondary-01"
  ip_range_services            = "subnet-01-secondary-02"
  configure_ip_masq            = true
  http_load_balancing          = true
  horizontal_pod_autoscaling   = true
  filestore_csi_driver         = false
  enable_private_endpoint      = false
  enable_private_nodes         = true
  remove_default_node_pool     = true
  logging_service              = "none"
  monitoring_service           = "none"
  regional                     = false
  maintenance_start_time	   = "01:00"
  default_max_pods_per_node    = 6
  deletion_protection          = false
  node_pools = [
    {
      name                      = "nodepool-demo"
      machine_type              = "e2-standard-2"
      min_count                 = 2
      max_count                 = 3
      spot                      = true
      disk_size_gb              = 20
      disk_type                 = "pd-standard"
      image_type                = "COS_CONTAINERD"
      # enable_gcfs               = false
      # enable_gvnic              = false
      # auto_repair               = false
      # auto_upgrade              = false
      # service_account           = "project-service-account@<PROJECT ID>.iam.gserviceaccount.com"
      # preemptible               = false
      initial_node_count        = 1
      node_count                = 1
    },
  ]
