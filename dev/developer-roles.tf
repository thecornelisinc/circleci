resource "aws_iam_policy" "developer_Policy" {
  name        = "AdminRole"
  path        = "/"
  description = "Developer access policy for AWS services."

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = [
          "ec2:*",
          "lambda:*",
          "s3:*",
          "rds:*",
          "codecommit:*"
        ],
        Resource = "*"
      }
    ]
  })
}