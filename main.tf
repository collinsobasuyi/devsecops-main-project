terraform {
  backend "s3" {
    bucket = "terraform-april-collins"
    key    = "global/s3/terraform.tfstate"
    region = "eu-west-2"
  }
}

provider "aws" {
  region = "eu-west-2"
}
