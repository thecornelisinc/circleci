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
  region = "us-east-1" # You can change this to your desired AWS region
}

# Create an S3 bucket
resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-unique-bucket-name1-12345" # Ensure this name is unique
  acl    = "private"                      # Defines who can access the bucket, e.g., "private", "public-read", etc.

  tags = {
    Name        = "My S3 Bucket"
    Environment = "Dev"
  }
}
