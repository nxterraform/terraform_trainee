resource "aws_vpc" "default" {
  count = var.create_vpc ? 1 : 0

  cidr_block                       = var.cidr
  enable_dns_hostnames             = var.enable_dns_hostnames
  enable_dns_support               = var.enable_dns_support

  tags = var.vpc_tags
}

resource "aws_internet_gateway" "default" {
  count = var.create_vpc ? 1 : 0
  vpc_id = aws_vpc.default[0].id

  tags = var.tags
}



resource "aws_eip" "nat" {
  count = length(var.private_subnets)
  vpc = true

  tags = var.tags
}

resource "aws_nat_gateway" "default" {

  count = length(var.private_subnets)
  allocation_id = element(aws_eip.nat.*.id, count.index)
  subnet_id = element(aws_subnet.public.*.id, count.index)

  tags =  var.tags
}

resource "aws_route" "public_internet_gateway" {
  count = var.create_vpc ? 1 : 0

  route_table_id         = aws_route_table.public[0].id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.default[0].id

  timeouts {
    create = "5m"
  }
}



resource "aws_route" "private_nat_gateway" {
  count = var.create_vpc ? 1 : 0
  route_table_id          =  aws_route_table.private[0].id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id           = aws_nat_gateway.default[0].id

  timeouts {
    create = "5m"
  }
}




resource "aws_route_table" "public" {
  count = var.create_vpc ? 1 : 0

  vpc_id = aws_vpc.default[0].id

  tags =  var.tags
}


resource "aws_route_table" "private" {
  count = var.create_vpc ? 1 : 0

  vpc_id = aws_vpc.default[0].id

  tags =  var.tags
}


resource "aws_subnet" "public" {
  count = length(var.public_subnets)

  vpc_id                          = aws_vpc.default[0].id
  cidr_block                      = element(concat(var.public_subnets, [""]), count.index)
  availability_zone               = length(regexall("^[a-z]{2}-", element(var.azs, count.index))) > 0 ? element(var.azs, count.index) : null
  map_public_ip_on_launch         = var.map_public_ip_on_launch

  tags =  var.public_sub_tags
}



resource "aws_subnet" "private" {
  count = length(var.private_subnets)

  vpc_id                          = aws_vpc.default[0].id
  cidr_block                      = var.private_subnets[count.index]
  availability_zone               = length(regexall("^[a-z]{2}-", element(var.azs, count.index))) > 0 ? element(var.azs, count.index) : null

  tags =  var.private_sub_tags
}
