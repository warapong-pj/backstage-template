locals {
  tags = {
    Name              = "${var.project}-${var.environment}-${var.name}"
    Owner             = var.owner
    Environment       = var.environment
    ManageByTerraform = "True"
  }
}

module "security-group" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "5.2.0"

  name   = "${var.project}-${var.environment}-${var.name}"
  vpc_id = var.vpc_id

  ingress_with_cidr_blocks = [
    {
      from_port   = 3306
      to_port     = 3306
      protocol    = "tcp"
      cidr_blocks = "0.0.0.0/0"
    },
  ]
}

module "rds" {
  source  = "terraform-aws-modules/rds/aws"
  version = "6.9.0"

  identifier = "${var.project}-${var.environment}-${var.name}"

  engine            = "mysql"
  engine_version    = var.mysql_version
  instance_class    = var.instance_type
  allocated_storage = var.disk_size

  username = var.username

  iam_database_authentication_enabled = true

  vpc_security_group_ids = [module.security-group.security_group_id]

  maintenance_window = "Mon:00:00-Mon:02:00"
  backup_window      = "03:00-05:00"

  tags = local.tags

  # # DB subnet group
  subnet_ids = var.subnet_id

  # DB parameter group
  family = var.mysql_family

  # DB option group
  major_engine_version = var.mysql_version

  # Database Deletion Protection
  deletion_protection = var.deletion_protection
}
