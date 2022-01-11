#create the VPC

resource "aws_vpc" "elite" {
  cidr_block            = var.cidr_block
  instance_tenancy      = var.instance_tenancy
  enable_dns_hostnames  = var.enable_dns_hostnames

  enable_dns_support               = var.enable_dns_support
  assign_generated_ipv6_cidr_block = var.enable_ipv6

  tags = var.tags
}

#Create Internet Gateway and attach it to VPC
resource "aws_internet_gateway" "IGW" {    
  vpc_id =  aws_vpc.elite.id  

}

#Create a Public Subnets.
resource "aws_subnet" "publicsubnets" {
  vpc_id     =  aws_vpc.elite.id
  cidr_block = "${var.public_subnets}" 

}

#Create a Private Subnet
resource "aws_subnet" "privatesubnets" {
  vpc_id       =  aws_vpc.elite.id
    cidr_block = "${var.private_subnets}"
}

