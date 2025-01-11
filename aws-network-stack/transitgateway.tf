# Transit Gateway
resource "aws_ec2_transit_gateway" "transit_gateway" {
  provider = aws.aws_region
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
resource "aws_ec2_transit_gateway_vpc_attachment" "vpc1_attachment" {
  provider = aws.aws_region
  transit_gateway_id = aws_ec2_transit_gateway.transit_gateway.id
  vpc_id             = aws_vpc.vpc1.id
  subnet_ids         = [
    aws_subnet.vpc1_subnet_private1.id,
    aws_subnet.vpc1_subnet_private2.id
  ]

  depends_on = [
    aws_subnet.vpc1_subnet_private1,
    aws_subnet.vpc1_subnet_private2,
    aws_ec2_transit_gateway.transit_gateway
  ]

  tags = {
    Name = "VPC1-TGW-Attachment"
    Env  = "Production"
  }
}

# Transit Gateway Attachment VPC2
resource "aws_ec2_transit_gateway_vpc_attachment" "vpc2_attachment" {
  provider = aws.aws_region
  transit_gateway_id = aws_ec2_transit_gateway.transit_gateway.id
  vpc_id             = aws_vpc.vpc2.id
  subnet_ids         = [
    aws_subnet.vpc2_subnet_private1.id,
    aws_subnet.vpc2_subnet_private2.id
  ]

  depends_on = [
    aws_subnet.vpc2_subnet_private1,
    aws_subnet.vpc2_subnet_private2,
    aws_ec2_transit_gateway.transit_gateway
  ]

  tags = {
    Name = "VPC2-TGW-Attachment"
    Env  = "Production"
  }
}



# Route in VPC1 private route table to reach VPC2
resource "aws_route" "vpc1_to_vpc2" {
  provider = aws.aws_region
  route_table_id         = aws_route_table.vpc1_private_routetable.id
  destination_cidr_block = aws_vpc.vpc2.cidr_block
  transit_gateway_id     = aws_ec2_transit_gateway.transit_gateway.id

  depends_on = [aws_ec2_transit_gateway.transit_gateway]
}

# Route in VPC1 public route table to reach VPC2 (if needed)
resource "aws_route" "vpc1_public_to_vpc2" {
  provider = aws.aws_region
  route_table_id         = aws_route_table.vpc1_public_routetable.id
  destination_cidr_block = aws_vpc.vpc2.cidr_block
  transit_gateway_id     = aws_ec2_transit_gateway.transit_gateway.id

  depends_on = [aws_ec2_transit_gateway.transit_gateway]
}


# Route in VPC2 private route table to reach VPC1
resource "aws_route" "vpc2_to_vpc1" {
  provider = aws.aws_region
  route_table_id         = aws_route_table.vpc2_private_routetable.id
  destination_cidr_block = aws_vpc.vpc1.cidr_block
  transit_gateway_id     = aws_ec2_transit_gateway.transit_gateway.id

  depends_on = [aws_ec2_transit_gateway.transit_gateway]
}

# Route in VPC2 public route table to reach VPC1 (if needed)
resource "aws_route" "vpc2_public_to_vpc1" {
  provider = aws.aws_region
  route_table_id         = aws_route_table.vpc2_public_routetable.id
  destination_cidr_block = aws_vpc.vpc1.cidr_block
  transit_gateway_id     = aws_ec2_transit_gateway.transit_gateway.id

  depends_on = [aws_ec2_transit_gateway.transit_gateway]
}