resource "aws_iam_user" "ecr" {
  name = var.name
  path = "/system/"

  tags = {
    tag-key = var.tag_key
  }
}

resource "aws_iam_access_key" "ecr" {
  user = aws_iam_user.ecr.name
}

resource "aws_iam_user_login_profile" "user" {
  user                    = aws_iam_user.ecr.name
  pgp_key                 = "keybase:abhii_12"
  password_reset_required = true
}

resource "aws_iam_user_policy" "ecr_po" {
  user = aws_iam_user.ecr.name

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
       "ecr:GetDownloadUrlForLayer",
                "ecr:BatchGetImage",
                "ecr:BatchCheckLayerAvailability",
                "ecr:BatchGetRepositoryScanningConfiguration",
                "ecr:CompleteLayerUpload",
                "ecr:PutImage",
                "ecr:InitiateLayerUpload",
                "ecr:UploadLayerPart",
                "ecr:CompleteLayerUpload",
                "ecr:DescribeRepositories",
                "ecr:GetRepositoryPolicy",
                "ecr:ListImages",
                "ecr:ListTagsForResource",
                "ecr:DeleteRepository",
                "ecr:DescribeImageReplicationStatus",
                "ecr:DescribeImages",
                "ecr:BatchDeleteImage",
                "ecr:SetRepositoryPolicy",
                "ecr:DeleteRepositoryPolicy",
                 "ecr:GetAuthorizationToken"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Effect": "Allow",
      "Action": "iam:ChangePassword",
      "Resource": "*"
    }
  ]
}
EOF
}