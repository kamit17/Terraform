terraform {
  backend "s3" {
    bucket = "amit-s3-demo-green"
    key    = "amit/terraform.tfstate"
    #dynamodb_table = "terraform_lock"
    region = "us-east-2"
  }
}
