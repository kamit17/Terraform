provider "aws" {
  region     = "us-east-2"

}
variable "dev_names" {
  type = list
  default =["greg","shomari","CDN"]  
}
resource "aws_instance" "myec2" {
  ami = "ami-0cfde0ea8edd312d4"
  instance_type = "t2.micro"
  count = 2

  tags = {
    Name = "test-${count.index}"
  }
  
}

resource "aws_iam_user" "this" {
  name = "payments-user-${count.index}"
  count = 2
  
}

resource "aws_iam_user" "dev" {
  name = var.dev_names[count.index]
  count = 3
  
}