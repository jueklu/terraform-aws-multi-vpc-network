# Elastic IP (EIP) for NAT Gateway
resource "aws_eip" "vpc2-nat-gw-eip" {
  domain = "vpc"

  tags = {
    Name        = "vpc2 NAT-GW EIP"
    Env         = "Production"
  }
}

# NAT Gateway
resource "aws_nat_gateway" "vpc2-nat-gw" {
  allocation_id = aws_eip.vpc2-nat-gw-eip.id
  subnet_id     = aws_subnet.vpc2-subnet-public-us-east-1a.id

  tags = {
    Name        = "VPC2 NAT-GW"
    Env         = "Production"
  }

  depends_on = [aws_internet_gateway.vpc2-igw]
}

# Internet Gateway
resource "aws_internet_gateway" "vpc2-igw" {
  vpc_id = aws_vpc.vpc2.id

  tags = {
    Name        = "VPC2 IGW"
    Env         = "Production"
  }
}
