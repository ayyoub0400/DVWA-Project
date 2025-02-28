#VPC Outputs

output "vpc_id" {
    description = "The ID of the VPC"
    value = aws_vpc.vpc.id
}

output "public_subnet_ids" {
    description = "The IDs of the public subnets"
    value = [aws_subnet.public_1.id, aws_subnet.public_2.id]
}

output "security_group_id" {
    description = "The ID of the security group"
    value = aws_security_group.ecs_ec2.id
}

variable "public_subnet_1_cidr" {
  description = "The CIDR block for the first public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "public_subnet_2_cidr" {
  description = "The CIDR block for the second public subnet"
  type        = string
  default     = "10.0.2.0/24"
}
