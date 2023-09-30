resource "aws_subnet" "public_subnet" {
  count = 2
  vpc_id            = aws_vpc.my-vpc.id
  cidr_block        = var.public_subnets_cidr[count.index]
  availability_zone = var.subnets_az[count.index]

  tags = {
    Name = "public"
  }
}


resource "aws_subnet" "private_subnet" {
  count = 2
  vpc_id            = aws_vpc.my-vpc.id
  cidr_block        = var.private_subnets_cidr[count.index]
  availability_zone = var.subnets_az[count.index]

  tags = {
    Name = "private"
  }
}

