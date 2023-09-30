resource "aws_vpc" "my-vpc" {
  cidr_block = var.cidr
  
  tags = {
    Name = "myday1-vpc"
  }
}
