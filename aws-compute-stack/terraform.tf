# Terraform Provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Provider for AWS Region
provider "aws" {
  alias  = "aws_region"
  region = var.aws_region
}