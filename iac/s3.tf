resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket_name  # Make sure this name is globally unique
  }
