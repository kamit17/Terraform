provider "aws" {
    region = "us-east-2"
  
}

module "ec2_instance" {
    source = "./modules/ec2"
    ami_value = "ami-0cfde0ea8edd312d4"
    instance_type_value = "t2.micro"
}