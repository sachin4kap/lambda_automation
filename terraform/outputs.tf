
output "s3_data_bucket_name" {
  description = "S3 bucket for RAG data"
  value       = aws_s3_bucket.data_bucket.id
}

output "s3_internal_data_bucket_name" {
  description = "S3 bucket for internal data"
  value       = aws_s3_bucket.internal_data_bucket.id
}

output "metadata_lambda_arn" {
  description = "ARN of the Metadata Extraction Lambda"
  value       = aws_lambda_function.metadata_extraction.arn
}

output "opensearch_domain_endpoint" {
  description = "Endpoint of the OpenSearch domain"
  value       = aws_opensearch_domain.opensearch_backend.endpoint
}
