terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.59.0"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = var.region
}

module "vpc" {
  source = "./vpc"

  environment = var.environment
  base_cidr = var.base_cidr
}

module "security_group" {
  source = "./security_group"

  environment = var.environment
  ssh_source_whitelist = var.ssh_source_whitelist
}
