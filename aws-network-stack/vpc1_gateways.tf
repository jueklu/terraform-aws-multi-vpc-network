# Elastic IP (EIP) for NAT Gateway
resource "aws_eip" "vpc1_nat_gw_eip" {
  provider = aws.aws_region
  domain = "vpc"

  tags = {
    Name        = "VPC1 NAT-GW EIP"
    Env         = "Production"
  }
}

# NAT Gateway
resource "aws_nat_gateway" "vpc1_nat_gw" {
  provider = aws.aws_region
  allocation_id = aws_eip.vpc1_nat_gw_eip.id
  subnet_id     = aws_subnet.vpc1_subnet_public1.id

  tags = {
    Name        = "VPC1 NAT-GW"
    Env         = "Production"
  }

  depends_on = [aws_internet_gateway.vpc1_igw]
}

# Internet Gateway
resource "aws_internet_gateway" "vpc1_igw" {
  provider = aws.aws_region
  vpc_id = aws_vpc.vpc1.id

  tags = {
    Name        = "VPC1 IGW"
    Env         = "Production"
  }
}