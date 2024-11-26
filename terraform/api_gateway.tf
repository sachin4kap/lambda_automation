
resource "aws_api_gateway_rest_api" "chatgpt_api" {
  name        = var.api_gateway_name
  description = var.api_gateway_description

  tags = {
    Owner       = var.tag_owner
    Email       = var.tag_email
    CostCenter  = var.tag_cost_center
  }
}

resource "aws_api_gateway_resource" "custom_action" {
  rest_api_id = aws_api_gateway_rest_api.chatgpt_api.id
  parent_id   = aws_api_gateway_rest_api.chatgpt_api.root_resource_id
  path_part   = "custom-action"

  tags = {
    Owner       = var.tag_owner
    Email       = var.tag_email
    CostCenter  = var.tag_cost_center
  }
}
