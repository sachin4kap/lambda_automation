
resource "aws_secretsmanager_secret" "api_credentials" {
  name = var.api_secret_name

  tags = {
    Owner       = var.tag_owner
    Email       = var.tag_email
    CostCenter  = var.tag_cost_center
  }
}

resource "aws_secretsmanager_secret" "opensearch_credentials" {
  name = var.opensearch_secret_name

  tags = {
    Owner       = var.tag_owner
    Email       = var.tag_email
    CostCenter  = var.tag_cost_center
  }
}
