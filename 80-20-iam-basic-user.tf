# Resource: AWS IAM User - Basic User (No AWSConsole Access)
resource "aws_iam_user" "basic_user" {
  name = "${local.aprefix}-eksadmin2"
  path = "/"
  force_destroy = true
  tags = local.common_tags
}

# Resource: AWS IAM User Policy - EKS Dashboard Full Access
resource "aws_iam_user_policy" "basic_user_eks_policy" {
  name = "${local.aprefix}-eks-dashboard-full-access-policy"
  user = aws_iam_user.basic_user.name

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "iam:ListRoles",
          "eks:*",
          "ssm:GetParameter"
        ]
        Effect   = "Allow"
        Resource = "*"
        #Resource = "${aws_eks_cluster.eks_cluster.arn}"
      },
    ]
  })
}
