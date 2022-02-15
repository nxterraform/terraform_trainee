output "user_name" {
  value = aws_iam_user.ecr.name
}
output "password" {
  value = aws_iam_user_login_profile.user.encrypted_password
}