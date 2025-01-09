# VPC 2
resource "aws_vpc" "vpc2" {
  cidr_block           = "10.20.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name       = "VPC2"
    Env        = "Production"
  }
}


# Public Subnet "us-east-1a", "10.20.0.0/24"
resource "aws_subnet" "vpc2-subnet-public-us-east-1a" {
  vpc_id                  = aws_vpc.vpc2.id
  cidr_block              = "10.20.0.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name      = "VPC2 Subnet-Public us-east-1a"
    Env       = "Production"
  }
}

# Private Subnet "us-east-1b", "10.20.1.0/24"
resource "aws_subnet" "vpc2-subnet-private-us-east-1b" {
  vpc_id            = aws_vpc.vpc2.id
  cidr_block        = "10.20.1.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name      = "VPC2 Subnet-Private us-east-1a"
    Env       = "Production"
  }
}

# Private Subnet "us-east-1c", "10.20.2.0/24"
resource "aws_subnet" "vpc2-subnet-private-us-east-1c" {
  vpc_id            = aws_vpc.vpc2.id
  cidr_block        = "10.20.2.0/24"
  availability_zone = "us-east-1c"

  tags = {
    Name      = "VPC2 Subnet-Private us-east-1b"
    Env       = "Production"
  }
}