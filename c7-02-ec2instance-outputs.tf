output "bestion_ec2_id" {
  description = "get instance id"
  value = module.ec2-instance-public.id
}

output "bestion_public_ip" {
  description = "get instance ip"
  value = module.ec2-instance-public.public_ip
}

output "private_ec2_id" {
  description = "get private id"
  value = [for ec2private in module.ec2-instance-private: ec2private.id ]
}

output "private_ec2_ip" {
  description = "get private ip"
  value = [for ec2private in module.ec2-instance-private: ec2private.private_ip ]
}