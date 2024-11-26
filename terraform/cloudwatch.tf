
resource "aws_cloudwatch_log_group" "lambda_logs" {
  name              = var.cloudwatch_log_group_name
  retention_in_days = var.cloudwatch_log_retention_days

  tags = {
    Owner       = var.tag_owner
    Email       = var.tag_email
    CostCenter  = var.tag_cost_center
  }
}
