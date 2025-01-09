# Private Routing Table
resource "aws_route_table" "vpc1-private-routetable" {
  vpc_id = aws_vpc.vpc1.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.vpc1-nat-gw.id
  }

  tags = {
    Name        = "VPC1 Private Route Table"
    Env         = "Production"
  }
}

# Public Routing Table
resource "aws_route_table" "vpc1-public-routetable" {
  vpc_id = aws_vpc.vpc1.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.vpc1-igw.id
  }

  tags = {
    Name        = "VPC1 Public Route Table"
    Env         = "Production"
  }
}


# Associate Routes with Subnets
resource "aws_route_table_association" "vpc1-subnet-public-us-east-1a" {
  subnet_id      = aws_subnet.vpc1-subnet-public-us-east-1a.id
  route_table_id = aws_route_table.vpc1-public-routetable.id
}

resource "aws_route_table_association" "vpc1-subnet-private-us-east-1b" {
  subnet_id      = aws_subnet.vpc1-subnet-private-us-east-1b.id
  route_table_id = aws_route_table.vpc1-private-routetable.id
}

resource "aws_route_table_association" "vpc1-subnet-private-us-east-1c" {
  subnet_id      = aws_subnet.vpc1-subnet-private-us-east-1c.id
  route_table_id = aws_route_table.vpc1-private-routetable.id
}
