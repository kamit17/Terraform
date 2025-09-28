provider "aws" {
    region = "us-east-2"
  
}
variable "ami" {
    description = "Ami for instance"
  
}
variable "instance_type" {
    description = "instance type"
  
}
resource "aws_instance" "example" {
    ami = var.ami
    instance_type = var.instance_type  
}