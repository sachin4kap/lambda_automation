
resource "aws_lambda_function" "metadata_extraction" {
  function_name = var.metadata_lambda_name
  handler       = "index.handler"
  runtime       = var.lambda_runtime
  role          = aws_iam_role.lambda_exec.arn
  filename      = "metadata_extraction.zip"

  tags = {
    Owner       = var.tag_owner
    Email       = var.tag_email
    CostCenter  = var.tag_cost_center
  }
}

resource "aws_lambda_function" "data_pull" {
  function_name = var.data_pull_lambda_name
  handler       = "index.handler"
  runtime       = var.lambda_runtime
  role          = aws_iam_role.lambda_exec.arn
  filename      = "data_pull.zip"

  tags = {
    Owner       = var.tag_owner
    Email       = var.tag_email
    CostCenter  = var.tag_cost_center
  }
}

resource "aws_lambda_function" "data_prepping" {
  function_name = var.data_prepping_lambda_name
  handler       = "index.handler"
  runtime       = var.lambda_runtime
  role          = aws_iam_role.lambda_exec.arn
  filename      = "data_prepping.zip"

  tags = {
    Owner       = var.tag_owner
    Email       = var.tag_email
    CostCenter  = var.tag_cost_center
  }
}

resource "aws_lambda_function" "plugin_logic" {
  function_name = var.plugin_logic_lambda_name
  handler       = "index.handler"
  runtime       = var.lambda_runtime
  role          = aws_iam_role.lambda_exec.arn
  filename      = "plugin_logic.zip"

  tags = {
    Owner       = var.tag_owner
    Email       = var.tag_email
    CostCenter  = var.tag_cost_center
  }
}

resource "aws_lambda_function" "opensearch_backend" {
  function_name = var.opensearch_backend_lambda_name
  handler       = "index.handler"
  runtime       = var.lambda_runtime
  role          = aws_iam_role.lambda_exec.arn
  filename      = "opensearch_backend.zip"

  tags = {
    Owner       = var.tag_owner
    Email       = var.tag_email
    CostCenter  = var.tag_cost_center
  }
}
