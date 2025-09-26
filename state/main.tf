terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.14.1"
    }
  }
}


provider "aws" {
    region = "us-east-2"
  
}

resource "aws_instance" "test" {
    instance_type = "t2.micro"
    ami = "ami-0cfde0ea8edd312d4"
  
}

resource "aws_s3_bucket" "s3_bucket" {
    bucket = "amit-s3-demo-green"
  
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}