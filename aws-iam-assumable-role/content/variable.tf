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

variable "owner" {
  default = ${{ values.owner | dump }}
}

variable "role_arn" {
  default = ${{ values.roleArn | dump }}
}

variable "policy" {
  default = <<EOF
${{ values.iamPolicy | dump }}
EOF
}
