locals {
  tags = {
    Name              = "${var.project}-${var.environment}-${var.name}"
    Owner             = var.owner
    Environment       = var.environment
    ManageByTerraform = "True"
  }
}

module "iam_policy" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-policy"
  version = "5.47.1"

  name        = "${var.project}-${var.environment}-${var.name}"
  path        = "/"

  policy = var.policy
}

module "iam-assumable-role" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-assumable-role"
  version = "5.47.1"

  trusted_role_arns = [
    var.role_arn
  ]

  create_role = true
  role_name   = "${var.project}-${var.environment}-${var.name}"

  custom_role_policy_arns = [
    module.iam_policy.arn
  ]
}
