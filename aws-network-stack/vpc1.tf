# VPC 1
resource "aws_vpc" "vpc1" {
  cidr_block           = "10.10.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name       = "VPC1"
    Env        = "Production"
  }
}


# Public Subnet "us-east-1a", "10.10.0.0/24"
resource "aws_subnet" "vpc1-subnet-public-us-east-1a" {
  vpc_id                  = aws_vpc.vpc1.id
  cidr_block              = "10.10.0.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name      = "VPC1 Subnet-Public us-east-1a"
    Env       = "Production"
  }
}

# Private Subnet "us-east-1b", "10.10.1.0/24"
resource "aws_subnet" "vpc1-subnet-private-us-east-1b" {
  vpc_id            = aws_vpc.vpc1.id
  cidr_block        = "10.10.1.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name      = "VPC1 Subnet-Private us-east-1a"
    Env       = "Production"
  }
}

# Private Subnet "us-east-1c", "10.10.2.0/24"
resource "aws_subnet" "vpc1-subnet-private-us-east-1c" {
  vpc_id            = aws_vpc.vpc1.id
  cidr_block        = "10.10.2.0/24"
  availability_zone = "us-east-1c"

  tags = {
    Name      = "VPC1 Subnet-Private us-east-1b"
    Env       = "Production"
  }
}