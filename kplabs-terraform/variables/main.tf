provider "aws" {
  region = "us-east-2"
}

# Create Security Group
resource "aws_security_group" "example_sg" {
  name        = "example-sg"
  description = "Example security group created with Terraform"
  #vpc_id      = "vpc-12345678" 

  # Inbound rule - allow SSH
  ingress {
    description      = "SSH access"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = [var.vpn_ip]
  }

  # Inbound rule - allow HTTP
  ingress {
    description      = "HTTP access"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = [var.vpn_ip]
  }

  # Outbound rule - allow all
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.vpn_ip]
  }

  tags = {
    Name = "example-sg"
  }
}
