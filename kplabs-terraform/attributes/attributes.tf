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