# main.tf

provider "aws" {
  region = "ap-south-1"  # Modify to your desired AWS region
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "sachin-unique-s3-bucket-name-12345"  # Make sure this name is globally unique
  acl    = "private"
}
