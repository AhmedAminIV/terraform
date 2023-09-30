output vpc_id {
  value       = aws_vpc.my-vpc
}

output public_subnet {
  value       = aws_subnet.public_subnet
}

output private_subnet {
  value       = aws_subnet.private_subnet
}

output public_rt {
  value       = aws_route_table.public-rt
}

output private_rt {
  value       = aws_route_table.private-rt
}
