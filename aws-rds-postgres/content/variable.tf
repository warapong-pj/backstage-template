variable "region" {
  default = "ap-southeast-1"
}

variable "project" {
  default = "demo"
}

variable "environment" {
  default = "s"
}

variable "name" {
  default = "sample"
}

variable "vpc_id" {
  default = "vpc-xxxxxxxx"
}

variable "subnet_id" {
  default = ["subnet-xxxxxxxx", "subnet-xxxxxxxx", "subnet-xxxxxxxx"]
}

variable "postgres_version" {
  default = "14"
}

variable "postgres_family" {
  default = "postgres14"
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
  default = "platform team"
}
