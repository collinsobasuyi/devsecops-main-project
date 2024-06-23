provider "aws" {
  region = "eu-west-2"
}

resource "aws_s3_bucket" "terraform_bucket" {
  bucket = "terraform-april-collins"
}

terraform {
  backend "s3" {
    bucket = "terraform-april-collins"
    key    = "global/s3/terraform.tfstate"
    region = "eu-west-2"
  }
}
