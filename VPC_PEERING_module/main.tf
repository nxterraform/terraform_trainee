
data "aws_caller_identity" "peer" {
  provider = aws.peer
}

resource "aws_vpc" "main" {
  cidr_block = "10.1.0.0/16"
}


resource "aws_vpc" "peer" {
  provider   = aws.peer
  cidr_block = "10.2.0.0/16"
}


#######################################
# VPC peering connection #
#######################################
resource "aws_vpc_peering_connection" "vpc_peering" {
  
  peer_owner_id = data.aws_caller_identity.peer.account_id
  peer_vpc_id   = aws_vpc.peer.id
  vpc_id        = aws_vpc.main.id
  auto_accept   = false

  tags = {
    Name = "VPC Peering" 
  }
}  


##############################################
# VPC peering accepter configuration #
##############################################
  resource "aws_vpc_peering_connection_accepter" "peer_accepter" {

  vpc_peering_connection_id = aws_vpc_peering_connection.vpc_peering.id
  auto_accept               = true

 }









