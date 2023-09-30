terraform {
  backend "s3" {
    bucket         = "day1-s3-backend"
    key            = "./terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock-table"
    profile = "default"
  }
}
