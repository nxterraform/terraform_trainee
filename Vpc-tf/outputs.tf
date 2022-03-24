output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.default[0].id
}

output "region" {
  description = "Region of the VPC"
  value       = var.region
}

output "ig_id" {
  description = "The ID of the internet gateway"
  value       = aws_internet_gateway.default[0].id
}

output "aws_subnet_public" {
  description = "aws_subnet_public_id"
  value       = aws_subnet.public[0].id
}

output "aws_subnet_public_1" {
  description = "aws_subnet_public_id_1"
  value       = aws_subnet.public[1].id
}

output "aws_subnet_private" {
  description = "aws_subnet_private_id"
  value       = aws_subnet.private[0].id
}

output "aws_subnet_private_1" {
  description = "aws_subnet_private_id"
  value       = aws_subnet.private[1].id
}
