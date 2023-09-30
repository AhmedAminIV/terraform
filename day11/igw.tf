resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.myday1-vpc.id

  tags = {
    Name = "igw"
  }
}