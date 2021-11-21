Features implemented
1. VPC and networking
2. High availability and scalability
3. Terraform scripts to provision the infrastructure
4. URL = `hello.alanchu.click`
5. Github action 1: terraform plan when submitting a pull request from a feature branch
6. Github action 2: terraform apply when merging feature branch to main
7. Web application served via HTTPS

External dependencies for this project
1. SSL Certificate
2. ACM certificate Domain
3. Route53 Zone ID
4. AWS credentials
5. AWS region


The above settings can be found at variables-app.tf

For example:
variable "domain" {
  description = "App domain"
  default     = "hello.alanchu.click"
}

variable "route53_zone_id" {
  description = "Zone Id"
  default     = "Z0170635D82FWVW9RPB3"
}

variable "acm_cert_domain" {
  description = "ACM certificate domain"
  default     = "*.alanchu.click"
}



