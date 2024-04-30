# Specify the Terraform version and the provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.45.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region           = "us-east-1" # You can change this to your desired AWS region
}

