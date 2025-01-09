# Transit Gateway
resource "aws_ec2_transit_gateway" "transit-gateway" {
  description = "Transit Gateway for inter-VPC communication"
  default_route_table_association = "enable"
  default_route_table_propagation = "enable"
  dns_support                     = "enable"
  vpn_ecmp_support                = "enable"

  tags = {
    Name = "Transit Gateway"
    Env  = "Production"
  }
}



# Transit Gateway Attachment VPC1
resource "aws_ec2_transit_gateway_vpc_attachment" "vpc1-attachment" {
  transit_gateway_id = aws_ec2_transit_gateway.transit-gateway.id
  vpc_id             = aws_vpc.vpc1.id
  subnet_ids         = [
    aws_subnet.vpc1-subnet-public-us-east-1a.id,
    aws_subnet.vpc1-subnet-private-us-east-1b.id,
    aws_subnet.vpc1-subnet-private-us-east-1c.id
  ]
  tags = {
    Name = "VPC1-TGW-Attachment"
    Env  = "Production"
  }
}

# Transit Gateway Attachment VPC2
resource "aws_ec2_transit_gateway_vpc_attachment" "vpc2-attachment" {
  transit_gateway_id = aws_ec2_transit_gateway.transit-gateway.id
  vpc_id             = aws_vpc.vpc2.id
  subnet_ids         = [
    aws_subnet.vpc2-subnet-public-us-east-1a.id,
    aws_subnet.vpc2-subnet-private-us-east-1b.id,
    aws_subnet.vpc2-subnet-private-us-east-1c.id
  ]
  tags = {
    Name = "VPC2-TGW-Attachment"
    Env  = "Production"
  }
}



# Route in VPC1 private route table to reach VPC2
resource "aws_route" "vpc1-to-vpc2" {
  route_table_id         = aws_route_table.vpc1-private-routetable.id
  destination_cidr_block = aws_vpc.vpc2.cidr_block
  transit_gateway_id     = aws_ec2_transit_gateway.transit-gateway.id
}

# Route in VPC1 public route table to reach VPC2 (if needed)
resource "aws_route" "vpc1-public-to-vpc2" {
  route_table_id         = aws_route_table.vpc1-public-routetable.id
  destination_cidr_block = aws_vpc.vpc2.cidr_block
  transit_gateway_id     = aws_ec2_transit_gateway.transit-gateway.id
}


# Route in VPC2 private route table to reach VPC1
resource "aws_route" "vpc2-to-vpc1" {
  route_table_id         = aws_route_table.vpc2-private-routetable.id
  destination_cidr_block = aws_vpc.vpc1.cidr_block
  transit_gateway_id     = aws_ec2_transit_gateway.transit-gateway.id
}

# Route in VPC2 public route table to reach VPC1 (if needed)
resource "aws_route" "vpc2-public-to-vpc1" {
  route_table_id         = aws_route_table.vpc2-public-routetable.id
  destination_cidr_block = aws_vpc.vpc1.cidr_block
  transit_gateway_id     = aws_ec2_transit_gateway.transit-gateway.id
}
