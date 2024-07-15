variable "AWS_ACCESS_KEY_ID" {
  type      = string
  sensitive = true
}
variable "AWS_SECRET_ACCESS_KEY" {
  type      = string
  sensitive = true
}

variable "region" {
  type    = string
  default = "eu-west-1a"
}

provider "aws" {
  region = "eu-west-1"
}
