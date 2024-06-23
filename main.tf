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
