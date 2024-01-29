variable "vpc_name" {
  description = "VPC Name"
}

variable "vpc_cidr_block" {
  description = "VPC CIDR Range"
}

variable "vpc_availability_zones" {
  description = "Provide Availability Zones"
}

variable "vpc_private_subnets" {
  description = "Provide Private Subnet"
}

variable "vpc_public_subnets" {
  description = "Provide Public Subnet"
}

variable "vpc_database_subnets" {
  description = "Provide Database Subnet"
}

variable "vpc_create_database_subnet_group" {
  description = "VPC Create Database Subnet Group"
}

variable "vpc_create_database_subnet_route_table" {
  description = "Create Database Subnet Route Table"
}

variable "vpc_enable_nat_gateway" {
  description = "Vpc Enable Nat Gateway"
}

variable "vpc_single_nat_gateway" {
  description = "Single Nat Gateway"
}