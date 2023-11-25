output "domain" {
  description = "The DNS zone domain."
  value       = "${module.dns_private_zone.domain}"
}

output "name" {
  description = "The DNS zone name."
  value       = "${module.dns_private_zone.name}"
}

output "name_servers" {
  description = "The DNS zone name servers."
  value       = "${module.dns_private_zone.name_servers}"
}

output "type" {
  description = "TThe DNS zone type."
  value       = "${module.dns_private_zone.type}"
}