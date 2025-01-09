# Elastic IP (EIP) for NAT Gateway
resource "aws_eip" "vpc1-nat-gw-eip" {
  domain = "vpc"

  tags = {
    Name        = "VPC1 NAT-GW EIP"
    Env         = "Production"
  }
}

# NAT Gateway
resource "aws_nat_gateway" "vpc1-nat-gw" {
  allocation_id = aws_eip.vpc1-nat-gw-eip.id
  subnet_id     = aws_subnet.vpc1-subnet-public-us-east-1a.id

  tags = {
    Name        = "VPC1 NAT-GW"
    Env         = "Production"
  }

  depends_on = [aws_internet_gateway.vpc1-igw]
}

# Internet Gateway
resource "aws_internet_gateway" "vpc1-igw" {
  vpc_id = aws_vpc.vpc1.id

  tags = {
    Name        = "VPC1 IGW"
    Env         = "Production"
  }
}
