# Application configuration | variables-app.tf

variable "domain" {
  description = "App domain"
  default     = "hello.alanchu.click"
}

variable "route53_zone_id" {
  description = "App domain"
  default     = "Z0170635D82FWVW9RPB3"
}

variable "app_name" {
  type = string
  description = "Application name"
}

variable "app_environment" {
  type = string
  description = "Application environment"
}

variable "admin_sources_cidr" {
  type        = list(string)
  description = "List of IPv4 CIDR blocks from which to allow admin access"
}

variable "app_sources_cidr" {
  type        = list(string)
  description = "List of IPv4 CIDR blocks from which to allow application access"
}
