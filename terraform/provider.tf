terraform {
  backend "s3" {
    bucket = "alex-terraform-backend"
    key    = "default"
    region = "eu-west-1"
  }
}

provider "aws" {
  region = "eu-west-1"
}
