variable "env" {
  description = "The environment for the ECS cluster"
  type        = string
}

variable "vpc_id" {
  description = "balls"
  type        = string
}

variable "public_subnet_ids" {
  description = "The IDs of the public subnets"
  type        = list(string)
}

variable "security_group_id" {
  description = "security group id"
  type        = string
}