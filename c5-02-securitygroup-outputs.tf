output "public_bastion_sg_group_id" {
  description = "The ID of the security group"
  value       = module.security-group-bestion.security_group_id
}

output "public_bastion_sg_group_vpc_id" {
  description = "The VPC ID"
  value       = module.security-group-bestion.security_group_vpc_id
  }

output "public_bastion_sg_group_name" {
  description = "The name of the security group"
  value       = module.security-group-bestion.security_group_name
}


##Private EC2 Security Group

output "private_sg_group_id" {
  description = "The ID of the security group"
  value       = module.security-group-private.security_group_id
}

output "private_bastion_sg_group_vpc_id" {
  description = "The VPC ID"
  value       = module.security-group-private.security_group_vpc_id
}

output "private_bastion_sg_group_name" {
  description = "The name of the security group"
  value       = module.security-group-private.security_group_name
}