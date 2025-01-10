# VPC1: Security Group for SSH Access and Ping
resource "aws_security_group" "vpc1_sg" {
  provider = aws.aws_region
  name        = "VPC1-SG"
  description = "Security group for SSH access and ping"
  vpc_id      = var.vpc1_id

  ingress {
    description = "Allow SSH from anywhere"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow ping"
    from_port   = 8
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "VPC1-SG"
    Env  = "Production"
  }
}



# VPC1: Security Group for SSH Access and Ping
resource "aws_security_group" "vpc2_sg" {
  provider = aws.aws_region
  name        = "VPC2-SG"
  description = "Security group for SSH access and ping"
  vpc_id      = var.vpc2_id

  ingress {
    description = "Allow SSH from anywhere"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow ping"
    from_port   = 8
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "VPC2-SG"
    Env  = "Production"
  }
}