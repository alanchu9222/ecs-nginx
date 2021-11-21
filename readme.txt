External dependencies for this project
1. SSL Certificate
2. ACM certificate Domain
3. Route53 Zone ID
4. AWS credentials
5. AWS region

Please update the associated variables in the
variables-app.tf file to suit your environment.

For example replace the following variables.

variable "domain" {
  description = "App domain"
  default     = "hello.alanchu.click"
}

variable "route53_zone_id" {
  description = "App domain"
  default     = "Z0170635D82FWVW9RPB3"
}

variable "acm_cert_domain" {
  description = "App domain"
  default     = "*.alanchu.click"
}



