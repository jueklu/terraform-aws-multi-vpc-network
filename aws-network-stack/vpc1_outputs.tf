# VPC1 ID
output "VPC1_ID" {
  value = aws_vpc.vpc1.id
}

# Public Subnet ID
output "VPC1_Public_Subnet_IDs" {
  value = [
    aws_subnet.vpc1_subnet_public1.id
  ]
}

# Private Subnet IDs
output "VPC1_Private_Subnet_IDs" {
  value = [
    aws_subnet.vpc1_subnet_private1.id,
    aws_subnet.vpc1_subnet_private2.id
  ]
}


# Public Routing Table ID
output "VPC1_Public_Route_Table_ID" {
  value = aws_route_table.vpc1_public_routetable.id
}

# Private Routing Table ID
output "VPC1_Private_Route_Table_ID" {
  value = aws_route_table.vpc1_private_routetable.id
}

# Internet Gateway ID
output "VPC1_Internet_Gateway_ID" {
  value = aws_internet_gateway.vpc1_igw.id
}

# NAT Gateway ID
output "VPC1_NAT_Gateway_ID" {
  value = aws_nat_gateway.vpc1_nat_gw.id
}