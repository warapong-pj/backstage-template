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

variable "acl" {
  default = "private"
}

variable "owner" {
  default = ${{ values.owner | dump }}
}
