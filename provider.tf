# Setup the AWS provider | provider.tf

terraform {
  required_version = ">= 0.12"
}

provider "aws" {
  version     = "~> 2.12"
  region      = var.aws_region
  shared_credentials_file = "/Users/tf_user/.aws/credentials"
  profile     = "ecs-nginx"
}
