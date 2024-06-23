provider "aws" {
region = "eu-west-2" # London region
}
resource "aws_s3_bucket" "terraform-april-collins-obasuyi" {
bucket = "terraform-april-collins-obasuyi"
}
terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "terraform-april-collins-obasuyi"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-west-2"
  }
}