# VPC1 ID
output "VPC1-ID" {
  value = aws_vpc.vpc1.id
}

# Public Subnet ID
output "VPC1-Public-Subnet-IDs" {
  value = [
    aws_subnet.vpc1-subnet-public-us-east-1a.id
  ]
}

# Private Subnet IDs
output "VPC1-Private-Subnet-IDs" {
  value = [
    aws_subnet.vpc1-subnet-private-us-east-1b.id,
    aws_subnet.vpc1-subnet-private-us-east-1c.id
  ]
}


# Public Routing Table ID
output "VPC1-Public-Route-Table-ID" {
  value = aws_route_table.vpc1-public-routetable.id
}

# Private Routing Table ID
output "VPC1-Private-Route-Table-ID" {
  value = aws_route_table.vpc1-private-routetable.id
}

# Internet Gateway ID
output "VPC1-Internet-Gateway-ID" {
  value = aws_internet_gateway.vpc1-igw.id
}

# NAT Gateway ID
output "VPC1-NAT-Gateway-ID" {
  value = aws_nat_gateway.vpc1-nat-gw.id
}
