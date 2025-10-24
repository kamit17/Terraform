variable "instance_name" {
  type        = string
  description = "Value of the EC2 instance's name tag"
  default     = "learn-terraform"
}

variable "instance_type" {
  type        = string
  description = "The Ec2 instance type"
  default     = "t2.micro"
}