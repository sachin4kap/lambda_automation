
# Global AWS Variables
variable "aws_region" {
  description = "AWS region to deploy resources"
  default     = "us-east-1"
}

# Tag Variables
variable "tag_owner" {
  description = "Owner of the resources"
  type        = string
  default     = "Sachin"
}

variable "tag_email" {
  description = "Email of the owner"
  type        = string
  default     = "sachin.k.kapoor@pwc.com"
}

variable "tag_cost_center" {
  description = "Cost center for the resources"
  type        = string
  default     = "0000"
}

# S3 Bucket Variables
variable "s3_data_bucket_name" {
  description = "Name of the S3 bucket for RAG data"
  type        = string
}

variable "s3_internal_data_bucket_name" {
  description = "Name of the S3 bucket for internal data"
  type        = string
}

# Lambda Variables
variable "metadata_lambda_name" {
  description = "Name of the Metadata Extraction Lambda"
  type        = string
}

variable "data_pull_lambda_name" {
  description = "Name of the Data Pull Lambda"
  type        = string
}

variable "data_prepping_lambda_name" {
  description = "Name of the Data Prepping Lambda"
  type        = string
}

variable "plugin_logic_lambda_name" {
  description = "Name of the Plugin Logic Lambda"
  type        = string
}

variable "opensearch_backend_lambda_name" {
  description = "Name of the OpenSearch Backend Lambda"
  type        = string
}

variable "lambda_runtime" {
  description = "Runtime for all Lambda functions"
  type        = string
  default     = "python3.9"
}

# API Gateway Variables
variable "api_gateway_name" {
  description = "Name of the API Gateway"
  type        = string
}

variable "api_gateway_description" {
  description = "Description of the API Gateway"
  type        = string
}

# EventBridge Variables
variable "event_rule_name" {
  description = "Name of the EventBridge Rule"
  type        = string
}

variable "event_rule_description" {
  description = "Description of the EventBridge Rule"
  type        = string
}

variable "lambda_event_target_id" {
  description = "ID of the EventBridge Lambda target"
  type        = string
}

# OpenSearch Variables
variable "opensearch_domain_name" {
  description = "Domain name for OpenSearch backend"
  type        = string
}

variable "opensearch_instance_type" {
  description = "Instance type for OpenSearch"
  type        = string
  default     = "t3.medium.search"
}

variable "opensearch_volume_size" {
  description = "EBS volume size for OpenSearch"
  type        = number
  default     = 10
}

variable "opensearch_volume_type" {
  description = "EBS volume type for OpenSearch"
  type        = string
  default     = "gp2"
}

# IAM Variables
variable "iam_role_name" {
  description = "Name of the IAM Role for Lambda execution"
  type        = string
}

variable "iam_policy_name" {
  description = "Name of the IAM Policy for Lambda execution"
  type        = string
}

# CloudWatch Variables
variable "cloudwatch_log_group_name" {
  description = "Name of the CloudWatch Log Group"
  type        = string
}

variable "cloudwatch_log_retention_days" {
  description = "Retention period for CloudWatch logs (in days)"
  type        = number
  default     = 7
}
