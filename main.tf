provider "aws" {
  region = "eu-west-2"
}

resource "aws_s3_bucket" "terraform_bucket" {
  bucket = "terraform-april-collins"
  tags = {
    Name        = "terraform-april-collins"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "bucket_acl" {
  bucket = aws_s3_bucket.terraform_bucket.bucket
  acl    = "private"
}

terraform {
  backend "s3" {
    bucket = "terraform-april-collins"
    key    = "global/s3/terraform.tfstate"
    region = "eu-west-2"
  }
}
