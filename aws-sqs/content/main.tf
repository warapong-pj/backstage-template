locals {
  tags = {
    Name              = "${var.project}-${var.environment}-${var.name}"
    Owner             = var.owner
    Environment       = var.environment
    ManageByTerraform = "True"
  }
}

module "sqs" {
  source  = "terraform-aws-modules/sqs/aws"
  version = "4.2.0"

  name = "${var.project}-${var.environment}-${var.name}"

  tags = local.tags
}
