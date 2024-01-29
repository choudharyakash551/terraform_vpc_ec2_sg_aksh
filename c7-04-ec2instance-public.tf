module "ec2-instance-public" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.6.0"
  name = "${var.environment}-Bestionhost"
  ami = data.aws_ami.amzlinux2.id
  instance_type          = var.instance_type
  key_name               = var.instance_access_key
  #monitoring             = true
  vpc_security_group_ids = [module.security-group-bestion.security_group_id]
  subnet_id              = module.vpc.public_subnets[0] 

  tags = local.common_tags
}