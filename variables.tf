variable "aws_region" {
  description = "AWS Region for the Route 53 lab."
  type        = string
  default     = "us-east-1"
}

variable "domain_name" {
  description = "Example domain for Terraform planning only."
  type        = string
  default     = "example.com"
}
