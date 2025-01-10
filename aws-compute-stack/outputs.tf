# VPC1: Security Group ID
output "VPC1_SecurityGroup_ID" {
  description = "Security Group ID for SSH Access"
  value       = aws_security_group.vpc1_sg.id
}

# VPC2: Security Group ID
output "VPC2_SecurityGroup_ID" {
  description = "Security Group ID for SSH Access"
  value       = aws_security_group.vpc2_sg.id
}


#### EC2 Instance IDs

# VPC1: EC2 Instance ID: VM in Public Subnet
output "VPC1_Public_Instance_ID" {
  description = "EC2 instance ID in public subnet"
  value       = aws_instance.ec2_vpc1_public_subnet.id
}

# VPC1: EC2 Instance ID: VM in Private Subnet 1
output "VPC1_Private_Instance1_ID" {
  description = "EC2 instance ID in private subnet 1"
  value       = aws_instance.ec2_vpc1_private_subnet1.id
}

# VPC1: EC2 Instance ID: VM in Private Subnet 2
output "VPC1_Private_Instance2_ID" {
  description = "EC2 instance ID in private subnet 2"
  value       = aws_instance.ec2_vpc1_private_subnet2.id
}


# VPC2: EC2 Instance ID: VM in Public Subnet
output "VPC2_Public_Instance_ID" {
  description = "EC2 instance ID in public subnet"
  value       = aws_instance.ec2_vpc2_public_subnet.id
}

# VPC2: EC2 Instance ID: VM in Private Subnet 1
output "VPC2_Private_Instance1_ID" {
  description = "EC2 instance ID in private subnet 1"
  value       = aws_instance.ec2_vpc2_private_subnet1.id
}

# VPC2: EC2 Instance ID: VM in Private Subnet 2
output "VPC2_Private_Instance2_ID" {
  description = "EC2 instance ID in private subnet 2"
  value       = aws_instance.ec2_vpc2_private_subnet2.id
}


#### EC2 IPs

# VPC1: EC2 Instance public IP (VM in Public Subnet)
output "VPC1_Public_Instance_Public_IP" {
  description = "Public IP address of the EC2 instance in the public subnet"
  value       = aws_instance.ec2_vpc1_public_subnet.public_ip
}

# VPC1: EC2 Instance private IP (VM in Public Subnet)
output "VPC1_Public_Instance_Private_IP" {
  description = "Private IP address of the EC2 instance in the public subnet"
  value       = aws_instance.ec2_vpc1_public_subnet.private_ip
}

# VPC1: EC2 Instance private IP (VM1 in Private Subnet)
output "VPC1_Private_Instance1_Private_IP" {
  description = "Private IP address of the EC2 instance in private subnet 1"
  value       = aws_instance.ec2_vpc1_private_subnet1.private_ip
}

# VPC1: EC2 Instance private IP (VM2 in Private Subnet)
output "VPC1_Private_Instance2_Private_IP" {
  description = "Private IP address of the EC2 instance in private subnet 2"
  value       = aws_instance.ec2_vpc1_private_subnet2.private_ip
}


# VPC2: EC2 Instance public IP (VM in Public Subnet)
output "VPC2_Public_Instance_Public_IP" {
  description = "Public IP address of the EC2 instance in the public subnet"
  value       = aws_instance.ec2_vpc2_public_subnet.public_ip
}

# VPC2: EC2 Instance private IP (VM in Public Subnet)
output "VPC2_Public_Instance_Private_IP" {
  description = "Private IP address of the EC2 instance in the public subnet"
  value       = aws_instance.ec2_vpc2_public_subnet.private_ip
}

# VPC2: EC2 Instance private IP (VM1 in Private Subnet)
output "VPC2_Private_Instance1_Private_IP" {
  description = "Private IP address of the EC2 instance in private subnet 1"
  value       = aws_instance.ec2_vpc2_private_subnet1.private_ip
}

# VPC2: EC2 Instance private IP (VM2 in Private Subnet)
output "VPC2_Private_Instance2_Private_IP" {
  description = "Private IP address of the EC2 instance in private subnet 2"
  value       = aws_instance.ec2_vpc2_private_subnet2.private_ip
}