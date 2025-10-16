data "terraform_remote_state" "vpc" {
  backend = "s3"

  config = {
    bucket = "tf-kirito-s3-demo-bucket"
    key    = "eip.tfstate"
    #dynamodb_table = "terraform_lock"
    region = "us-east-2"
  }
}
