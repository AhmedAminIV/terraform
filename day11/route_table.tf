resource "aws_route_table" "public-rt" {
  vpc_id = aws_vpc.myday1-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "public-rt"
  }
}

resource "aws_route_table" "private-rt" {
  vpc_id = aws_vpc.myday1-vpc.id

  tags = {
    Name = "private-rt"
    nat_gateway_id = aws_nat_gateway.nat_gateway.id
  }
  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat_gateway.id
  }
}