terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.46.0"
    }
  }
}

# Default AWS provider (for us-east-1 or any default region)
provider "aws" {
  region = var.region
}