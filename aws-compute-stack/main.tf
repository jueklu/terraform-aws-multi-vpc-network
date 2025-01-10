# VPC1: EC2 Instance in Public Subnet
resource "aws_instance" "ec2_vpc1_public_subnet" {
  provider = aws.aws_region
  ami                    = var.ami_id
  instance_type          = "t2.micro"
  subnet_id              = var.vpc1_public_subnet_id
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.vpc1_sg.id]

  tags = {
    Name = "public-subnet-vm"
    Env  = "Production"
  }
}

# VPC1: EC2 Instance in Private Subnet 1
resource "aws_instance" "ec2_vpc1_private_subnet1" {
  provider = aws.aws_region
  ami                    = var.ami_id
  instance_type          = "t2.micro"
  subnet_id              = var.vpc1_private_subnet1_id
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.vpc1_sg.id]

  tags = {
    Name = "private-subnet-vm1"
    Env  = "Production"
  }
}

# VPC1: EC2 Instance in Private Subnet 2
resource "aws_instance" "ec2_vpc1_private_subnet2" {
  provider = aws.aws_region
  ami                    = var.ami_id
  instance_type          = "t2.micro"
  subnet_id              = var.vpc1_private_subnet2_id
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.vpc1_sg.id]

  tags = {
    Name = "private-subnet-vm2"
    Env  = "Production"
  }
}



# VPC2: EC2 Instance in Public Subnet
resource "aws_instance" "ec2_vpc2_public_subnet" {
  provider = aws.aws_region
  ami                    = var.ami_id
  instance_type          = "t2.micro"
  subnet_id              = var.vpc2_public_subnet_id
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.vpc2_sg.id]

  tags = {
    Name = "public-subnet-vm"
    Env  = "Production"
  }
}

# VPC2: EC2 Instance in Private Subnet 1
resource "aws_instance" "ec2_vpc2_private_subnet1" {
  provider = aws.aws_region
  ami                    = var.ami_id
  instance_type          = "t2.micro"
  subnet_id              = var.vpc2_private_subnet1_id
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.vpc2_sg.id]

  tags = {
    Name = "private-subnet-vm1"
    Env  = "Production"
  }
}

# VPC2: EC2 Instance in Private Subnet 2
resource "aws_instance" "ec2_vpc2_private_subnet2" {
  provider = aws.aws_region
  ami                    = var.ami_id
  instance_type          = "t2.micro"
  subnet_id              = var.vpc2_private_subnet2_id
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.vpc2_sg.id]

  tags = {
    Name = "private-subnet-vm2"
    Env  = "Production"
  }
}