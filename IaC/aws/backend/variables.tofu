variable "availability_zone" {
  type    = string
  default = "eu-west-1a"
}

variable "region" {
  type    = string
  default = "eu-west-1"
}

variable "bucket_name" {
  default = "tofu-backend-state"
}

variable "dynamodb_table_name" {
  default = "tofu-state-lock"
}