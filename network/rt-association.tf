resource "aws_route_table_association" "a" {
  count = 2
  subnet_id      = aws_subnet.public_subnet[count.index].id
  route_table_id = aws_route_table.public-rt.id
}

resource "aws_route_table_association" "b" {
  count = 2
  subnet_id      = aws_subnet.private_subnet[count.index].id
  route_table_id = aws_route_table.private-rt.id
}

