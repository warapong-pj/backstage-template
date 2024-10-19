variable "region" {
  default = ${{ values.region | dump }}
}

variable "project" {
  default = ${{ values.project | dump }}
}

variable "environment" {
  default = ${{ values.environment | dump }}
}

variable "name" {
  default = ${{ values.name | dump }}
}

variable "vpc_id" {
  default = "vpc-xxxxxxxx"
}

variable "subnet_id" {
  default = ["subnet-xxxxxxxx", "subnet-xxxxxxxx", "subnet-xxxxxxxx"]
}

variable "mysql_version" {
  default = "5.7"
}

variable "mysql_family" {
  default = "mysql5.7"
}

variable "instance_type" {
  default = "db.t3a.large"
}

variable "disk_size" {
  default = 50
}

variable "username" {
  default = "admin"
}

variable "deletion_protection" {
  default = true
}

variable "owner" {
  default = ${{ values.owner | dump }}
}
