provider "aws" {
  region = "us-east-2"
}

# ---------- Locals ----------
locals {
  # EC2 tags you want on every instance
  common_tags = {
    Project     = "MyApp"
    Environment = "dev"
    ManagedBy   = "Terraform"
  }

  # IAM user naming patterns
  iam_user_prefix = "payments-user"
  dev_names       = ["greg", "shomari", "CDN"]
}

# ---------- EC2 Instances ----------
resource "aws_instance" "myec2" {
  ami           = "ami-0cfde0ea8edd312d4" # replace with valid AMI
  instance_type = "t2.micro"
  count         = 2

  tags = merge(
    local.common_tags,
    { Name = "test-${count.index}" } # unique Name per instance
  )
}

# ---------- IAM Users ----------
# Payments users with prefix + index
resource "aws_iam_user" "payments" {
  count = 2
  name  = "${local.iam_user_prefix}-${count.index}"
}

# Developer users from predefined list
resource "aws_iam_user" "dev" {
  count = length(local.dev_names)
  name  = local.dev_names[count.index]
}
