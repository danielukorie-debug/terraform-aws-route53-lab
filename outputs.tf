output "hosted_zone_id" {
  description = "Hosted zone ID after deployment."
  value       = aws_route53_zone.lab.zone_id
}

output "dns_record_name" {
  description = "Planned DNS record name."
  value       = aws_route53_record.www.fqdn
}
