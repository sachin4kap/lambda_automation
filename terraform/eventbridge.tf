
resource "aws_cloudwatch_event_rule" "data_pipeline_rule" {
  name        = var.event_rule_name
  description = var.event_rule_description
  event_pattern = jsonencode({
    "source": ["aws.s3"],
    "detail-type": ["Object Created"]
  })

  tags = {
    Owner       = var.tag_owner
    Email       = var.tag_email
    CostCenter  = var.tag_cost_center
  }
}

resource "aws_cloudwatch_event_target" "lambda_target" {
  rule      = aws_cloudwatch_event_rule.data_pipeline_rule.name
  target_id = var.lambda_event_target_id
  arn       = aws_lambda_function.data_pull.arn
}
