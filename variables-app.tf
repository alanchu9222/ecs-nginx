# Application configuration | variables-app.tf

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

variable "aws_region" {
  type = string
  description = "AWS region"
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


variable "nginx_app_name" {
  description = "Name of Application Container"
  default     = "nginx"
}

variable "nginx_app_image" {
  description = "Docker image to run in the ECS cluster"
  default     = "docker.io/nginxdemos/hello"

}

variable "nginx_app_port" {
  description = "Port exposed by the Docker image to redirect traffic to"
  default     = 80
}

variable "nginx_app_count" {
  description = "Number of Docker containers to run"
  default     = 2
}

variable "nginx_fargate_cpu" {
  description = "Fargate instance CPU units to provision (1 vCPU = 1024 CPU units)"
  default     = "1024"
}

variable "nginx_fargate_memory" {
  description = "Fargate instance memory to provision (in MiB)"
  default     = "2048"
}

