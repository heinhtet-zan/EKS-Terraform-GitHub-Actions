terraform {
  required_version = "~> 1.9.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "my-eks-project"
    region         = "us-east-1"
    key            = "LockID"
    dynamodb_table = "my-eks-table"
    encrypt        = true
  }
}

provider "aws" {
  region  = var.aws-region
}
