resource "aws_vpc" "myday1-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "myday1-vpc"
  }
}
