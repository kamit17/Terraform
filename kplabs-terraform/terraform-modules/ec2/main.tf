provider "aws" {
  region = "us-east-2"

}

resource "aws_instance" "myec2" {
  ami           = "ami-0cfde0ea8edd312d4"
  instance_type = "t2.micro"

  tags = {
    Name = "taint_ec2"
  }

}