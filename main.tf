# Public hosted zone - planning only
resource "aws_route53_zone" "lab" {
  name = var.domain_name

  tags = {
    Name        = "terraform-route53-lab"
    Project     = "terraform-aws-route53-lab"
    Environment = "learning"
    ManagedBy   = "Terraform"
  }
}

# Example DNS A record
resource "aws_route53_record" "www" {
  zone_id = aws_route53_zone.lab.zone_id
  name    = "www.${var.domain_name}"
  type    = "A"
  ttl     = 300

  records = ["192.0.2.10"]
}
