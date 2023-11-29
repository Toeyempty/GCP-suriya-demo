module "dns_private_zone" {
  source     = "terraform-google-modules/cloud-dns/google"
  version    = "5.1.1"
  project_id = var.project_id
  type       = var.dns_type
  name       = var.dns_name
  domain     = var.dns_domain
  
  # private_visibility_config_networks = [
  #   "https://www.googleapis.com/compute/v1/projects/my-project/global/networks/my-vpc"
  # ]
  # recordsets = [
  #   {
  #     name    = ""
  #     type    = "NS"
  #     ttl     = 300
  #     records = [
  #       "127.0.0.1",
  #     ]
  #   },
  #   {
  #     name    = "localhost"
  #     type    = "A"
  #     ttl     = 300
  #     records = [
  #       "127.0.0.1",
  #     ]
  #   },
  # ]
}
