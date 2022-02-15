output "user_arn" {
  value = "${aws_iam_user.newusers.0.arn}"
}
output "user" {
  value = "${aws_iam_user.newusers.1.arn}"
}