output "vpc_id" {
  description = "The ID of the VPC"
  value       = "${aws_vpc.elite.id}"
}

output "enable_dns_support" {
  description = "Whether or not the VPC has DNS support"
  value       = "${aws_vpc.elite.enable_dns_support}"
}