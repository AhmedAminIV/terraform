# resource "aws_eip" "nat-ip" {
#   vpc = true
# }

# resource "aws_nat_gateway" "nat_gateway" {
#   allocation_id = aws_eip.nat-ip.id
#   subnet_id = aws_subnet.public_subnet[0].id
#   tags = {
#     "Name" = "NatGateway"
#   }
# }