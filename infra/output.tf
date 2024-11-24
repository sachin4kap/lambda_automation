output "s3_bucket_name" {
  description = "The name of the S3 bucket"
  value       = module.s3_bucket.bucket_name
}

output "bucket_policy" {
  description = "The bucket policy JSON"
  value       = aws_s3_bucket_policy.bucket_policy.policy
}
