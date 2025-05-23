# specify required provider details
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# specify the region to deploy resources to
provider "aws" {
  region = var.aws_region
}

# deploy EC2 instance
resource "aws_instance" "web_server" {
  ami           = var.ami_us-east-2_linux2023
  instance_type = "t2.micro"

  tags = {
    Environment = var.environment
    Name        = "web_application_server"
    Terraform   = "true"
  }
}
