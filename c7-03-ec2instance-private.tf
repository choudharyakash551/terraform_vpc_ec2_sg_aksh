module "ec2-instance-private" {
  depends_on = [ module.vpc ] # VERY VERY IMPORTANT else userdata webserver provisioning will fail
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.6.0"
  name = "${var.environment}-private-vm"
  ami = data.aws_ami.amzlinux2.id
  instance_type          = var.instance_type
  key_name               = var.instance_access_key
  user_data = file("${path.module}/app1-install.sh")
  #monitoring             = true
  vpc_security_group_ids = [module.security-group-private.security_group_id]
  for_each = toset(["0", "1"])
  subnet_id =  element(module.vpc.private_subnets, tonumber(each.key))
  tags = local.common_tags
}