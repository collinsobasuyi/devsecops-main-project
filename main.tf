terraform {
  backend "s3" {
    bucket = "terraform-april-collins-obasuyi"
    key    = "global/s3/terraform.tfstate"
    region = "eu-west-2"
  }
}

provider "aws" {
  region = "eu-west-2"
}

resource "aws_s3_bucket" "terraform_bucket" {
  bucket = "terraform-april-collins-obasuyi"
  tags = {
    Name        = "terraform-april-collins-obasuyi"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "bucket_acl" {
  bucket = aws_s3_bucket.terraform_bucket.bucket
  acl    = "private"
}

output "bucket_name" {
  value = aws_s3_bucket.terraform_bucket.bucket
}
