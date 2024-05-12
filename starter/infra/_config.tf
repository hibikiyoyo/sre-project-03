terraform {
  backend "s3" {
    bucket = "udacity-tf-trungdd22" # Update here with your S3 bucket
    key    = "terraform/terraform.tfstate"
    region = "us-east-2"
    profile = "udacity"
  }
}

provider "aws" {
  region = "us-east-2"
  profile = "udacity" # lets say profile is my-profile

  default_tags {
    tags = local.tags
  }
}