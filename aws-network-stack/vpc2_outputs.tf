# VPC2 ID
output "VPC2_ID" {
  value = aws_vpc.vpc2.id
}

# Public Subnet ID
output "VPC2_Public_Subnet_IDs" {
  value = [
    aws_subnet.vpc2_subnet_public1.id
  ]
}

# Private Subnet IDs
output "VPC2_Private_Subnet_IDs" {
  value = [
    aws_subnet.vpc2_subnet_private1.id,
    aws_subnet.vpc2_subnet_private2.id
  ]
}


# Public Routing Table ID
output "VPC2_Public_Route_Table_ID" {
  value = aws_route_table.vpc2_public_routetable.id
}

# Private Routing Table ID
output "VPC2_Private_Route_Table_ID" {
  value = aws_route_table.vpc2_private_routetable.id
}

# Internet Gateway ID
output "VPC2_Internet_Gateway_ID" {
  value = aws_internet_gateway.vpc2_igw.id
}

# NAT Gateway ID
output "VPC2_NAT_Gateway_ID" {
  value = aws_nat_gateway.vpc2_nat_gw.id
}