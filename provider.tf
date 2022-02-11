terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.74.0"
    }
  }

  backend "s3" {

    bucket="terraform-user-terraform-lab-24"
    key="shambhawi/terraform.tfstate"
    region="ap-south-1"
    
  }
}

provider "aws" {
  # Configuration options

  region="ap-south-1"
}