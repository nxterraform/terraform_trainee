output "vpc_peering_id" {
  description = "Peering connection ID"
  value       = aws_vpc_peering_connection.vpc_peering.id
}

output "aws_vpc_peering_connection" {
  value = aws_vpc_peering_connection.vpc_peering
}

output "vpc_peering_accept_status" {
  description = "Accept status for the connection"
  value       = aws_vpc_peering_connection_accepter.peer_accepter.accept_status
}


output "vpc_peering_vpc_id" {
  description = "The ID of the requester VPC"
  value       = aws_vpc_peering_connection_accepter.peer_accepter.peer_vpc_id
}