
resource "aws_iam_role" "lambda_exec" {
  name = var.iam_role_name

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement: [
      {
        Action: "sts:AssumeRole",
        Effect: "Allow",
        Principal: {
          Service: "lambda.amazonaws.com"
        }
      }
    ]
  })

  tags = {
    Owner       = var.tag_owner
    Email       = var.tag_email
    CostCenter  = var.tag_cost_center
  }
}

resource "aws_iam_policy" "lambda_policy" {
  name        = var.iam_policy_name
  description = "IAM Policy for Lambda execution"
  policy      = jsonencode({
    Version = "2012-10-17",
    Statement: [
      {
        Action: [
          "logs:CreateLogGroup",
          "logs:CreateLogStream",
          "logs:PutLogEvents"
        ],
        Effect: "Allow",
        Resource: "arn:aws:logs:*:*:*"
      },
      {
        Action: "s3:*",
        Effect: "Allow",
        Resource: "arn:aws:s3:::*"
      },
      {
        Action: "textract:*",
        Effect: "Allow",
        Resource: "*"
      }
    ]
  })

  tags = {
    Owner       = var.tag_owner
    Email       = var.tag_email
    CostCenter  = var.tag_cost_center
  }
}

resource "aws_iam_role_policy_attachment" "lambda_policy_attach" {
  role       = aws_iam_role.lambda_exec.name
  policy_arn = aws_iam_policy.lambda_policy.arn
}
