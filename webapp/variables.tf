variable "ami_us-east-2_linux2" {
  description = "the Amazon Linux 2 AMI in us-east-2"
  type        = string
  default     = "ami-0133f9d4af72da4d0"
}
variable "ami_us-east-2_linux2023" {
  description = "the Amazon Linux 2023 AMI in us-east-2"
  type        = string
  default     = "ami-07b16138789c74029"
}
variable "aws_region" {
  description = "the AWS region value"
  type        = string
  default     = "us-east-2"
}
variable "environment" {
  description = "the environment currently being worked in"
  type        = string
  default     = "development"
}