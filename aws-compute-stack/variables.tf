# Input Variables for VPC, Subnets, SSH key pair and EC2 image IDs

# VPC1
variable "vpc1_id" {
  default = "vpc-0f7a0debfe767c990" # Define VPC ID
}

# Public Subnet
variable "vpc1_public_subnet_id" {
  default = "subnet-0cd08303d6c2ca393" # Define public subnet ID
}

# Private Subnet 1
variable "vpc1_private_subnet1_id" {
  default = "subnet-06c869f1c1a641e06" # Define private subnet 1 ID
}

# Private Subnet 2
variable "vpc1_private_subnet2_id" {
  default = "subnet-0dd68c51c8dc549ff" # Define private subnet 2 ID
}


# VPC2
variable "vpc2_id" {
  default = "vpc-0fbdcf30cd90aed70" # Define VPC ID
}

# Public Subnet
variable "vpc2_public_subnet_id" {
  default = "subnet-06bb3226eba36e4e4" # Define public subnet ID
}

# Private Subnet 1
variable "vpc2_private_subnet1_id" {
  default = "subnet-09ed92bb4df09d67e" # Define private subnet 1 ID
}

# Private Subnet 2
variable "vpc2_private_subnet2_id" {
  default = "subnet-0d0d933f0b8c2d309" # Define private subnet 2 ID
}



# SSH key pair name
variable "key_name" {
  default = "us-east-1-pc-le" # Define key pair name
}

# EC2 Image ID
variable "ami_id" {
  default = "ami-0e2c8caa4b6378d8c" # Define EC2 AMI ID
}