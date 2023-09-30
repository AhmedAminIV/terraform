resource "aws_subnet" "pub1" {
  vpc_id            = aws_vpc.myday1-vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"


  tags = {
    Name = "public1"
  }
}


resource "aws_subnet" "prv1" {
  vpc_id            = aws_vpc.myday1-vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "private1"
  }
}

resource "aws_subnet" "pub2" {
  vpc_id            = aws_vpc.myday1-vpc.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "public2"
  }
}

resource "aws_subnet" "prv2" {
  vpc_id            = aws_vpc.myday1-vpc.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = "us-east-1b"


  tags = {
    Name = "prv2"
  }
}

