# VPC2 ID
output "VPC2-ID" {
  value = aws_vpc.vpc2.id
}

# Public Subnet ID
output "VPC2-Public-Subnet-IDs" {
  value = [
    aws_subnet.vpc2-subnet-public-us-east-1a.id
  ]
}

# Private Subnet IDs
output "VPC2-Private-Subnet-IDs" {
  value = [
    aws_subnet.vpc2-subnet-private-us-east-1b.id,
    aws_subnet.vpc2-subnet-private-us-east-1c.id
  ]
}


# Public Routing Table ID
output "VPC2-Public-Route-Table-ID" {
  value = aws_route_table.vpc2-public-routetable.id
}

# Private Routing Table ID
output "VPC2-Private-Route-Table-ID" {
  value = aws_route_table.vpc2-private-routetable.id
}

# Internet Gateway ID
output "VPC2-Internet-Gateway-ID" {
  value = aws_internet_gateway.vpc2-igw.id
}

# NAT Gateway ID
output "VPC2-NAT-Gateway-ID" {
  value = aws_nat_gateway.vpc2-nat-gw.id
}
