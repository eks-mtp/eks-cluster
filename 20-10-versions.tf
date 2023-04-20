terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.19.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
  profile = var.aws_cli_profile
}