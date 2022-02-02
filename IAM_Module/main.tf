resource "aws_iam_user" "newusers" {
  count = length(var.username)
  name  = element(var.username, count.index)
}

resource "aws_iam_user_policy_attachment" "s3_bucket" {
  count      = length(var.username)
  user       = element(aws_iam_user.newusers.*.name, count.index)
  #user = aws_iam_user.newusers.1.policy
  policy_arn = aws_iam_policy.policy.arn
}


resource "aws_iam_policy" "policy" {
  name        = var.name
    description = "My test policy"


  policy = jsonencode({
    "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "s3:ListAllMyBuckets",
        "s3:List",
        "s3:Delete",
        "s3:Get"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
        Action = [
          "ec2:Describe*",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}
