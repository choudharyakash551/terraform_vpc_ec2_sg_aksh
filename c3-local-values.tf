locals {
  owners = var.buisness_division
  environment = var.environment
  name = "${var.buisness_division}-${var.environment}"
  common_tags = {
    owners = local.owners
    environment = local.environment
  }
}