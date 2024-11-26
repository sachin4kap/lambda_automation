
resource "aws_s3_bucket" "data_bucket" {
  bucket = var.s3_data_bucket_name
  acl    = "private"

  tags = {
    Owner       = var.tag_owner
    Email       = var.tag_email
    CostCenter  = var.tag_cost_center
  }
}

resource "aws_s3_bucket" "internal_data_bucket" {
  bucket = var.s3_internal_data_bucket_name
  acl    = "private"

  tags = {
    Owner       = var.tag_owner
    Email       = var.tag_email
    CostCenter  = var.tag_cost_center
  }
}
