#provider "aws" {
 # region = "us-east-"
#}

data "aws_ami" "example" {
  most_recent      = true
  owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"]
  }
}

resource "aws_instance" "web" {
    ami = data.aws_ami.example.image_id
    instance_type = "t2.micro"
  
}