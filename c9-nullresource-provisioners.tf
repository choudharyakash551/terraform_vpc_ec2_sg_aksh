resource "null_resource" "name" {
  depends_on = [module.ec2-instance-public]
  # Connection Block for Provisioners to connect to EC2 Instance
  connection {
    type     = "ssh"
    host     = aws_eip.bastion_eip.public_ip
    user     = "ec2-user"
    password = ""
    private_key = file("private-key/terraform-key.pem")
  }
  provisioner "file" {
   source      = "private-key/terraform-key.pem"
   destination = "/tmp/terraform-key.pem"
  }

provisioner "remote-exec" {
   inline = [
      "sudo chmod 400 /tmp/terraform-key.pem"
    ]
  }

## Local Exec Provisioner:  local-exec provisioner (Creation-Time Provisioner - Triggered during Create Resource)
provisioner "local-exec" {
   command = "echo VPC created on `date` and VPC ID: ${module.vpc.vpc_id} >> creation-time-vpc-id.txt"
   working_dir = "local-exec-output-files/"
  }
}