variable "instance_type" {
  description = "ec2 instance type"
  type = string
  default = "t2.micro"
}

variable "instance_access_key" {
  description = "server access key"
  type = string
  default = "terraform-key"
}

variable "private_instance_count" {
  description = "AWS EC2 Private Instances Count"
  type = number
  default = 1  
}