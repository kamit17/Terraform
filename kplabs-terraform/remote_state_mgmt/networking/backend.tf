terraform {
  backend "s3" {
    bucket = "tf-kirito-s3-demo-bucket"
    key    = "eip.tfstate"
    #dynamodb_table = "terraform_lock"
    region = "us-east-2"
  }
}
