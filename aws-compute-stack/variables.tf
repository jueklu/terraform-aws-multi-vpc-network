# Input Variables for VPC, Subnets, SSH key pair and EC2 image IDs

## AWS Region

variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "us-east-1"
}


## VPC1
variable "vpc1_id" {
  default = "vpc-071dcfce48b759a68" # Define VPC ID
}

# Public Subnet
variable "vpc1_public_subnet_id" {
  default = "subnet-03c9c3b8306bb930a" # Define public subnet ID
}

# Private Subnet 1
variable "vpc1_private_subnet1_id" {
  default = "subnet-033ce39cda60b51bf" # Define private subnet 1 ID
}

# Private Subnet 2
variable "vpc1_private_subnet2_id" {
  default = "subnet-0b32e2c7094a45080" # Define private subnet 2 ID
}


## VPC2
variable "vpc2_id" {
  default = "vpc-0965aad09b58d739d" # Define VPC ID
}

# Public Subnet
variable "vpc2_public_subnet_id" {
  default = "subnet-04ce09a8f41e689ee" # Define public subnet ID
}

# Private Subnet 1
variable "vpc2_private_subnet1_id" {
  default = "subnet-0612c5002535e3410" # Define private subnet 1 ID
}

# Private Subnet 2
variable "vpc2_private_subnet2_id" {
  default = "subnet-0fdb15a9a047a79ff" # Define private subnet 2 ID
}


## SSH Key and EC2 Image

# SSH key pair name
variable "key_name" {
  default = "us-east-1-pc-le" # Define key pair name
}

# EC2 Image ID
variable "ami_id" {
  default = "ami-0e2c8caa4b6378d8c" # Define EC2 AMI ID
}