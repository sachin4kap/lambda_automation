resource "aws_s3_bucket_policy" "bucket_policy" {
  bucket = var.bucket_name

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action    = ["s3:GetObject"]
        Effect    = "Allow"
        Resource  = "arn:aws:s3:::${var.bucket_name}/*"
        Principal = "*"
      }
    ]
  })
}
