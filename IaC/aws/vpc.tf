variable "aws_infra_key_id" {
    type = string
    nullable = false
}
variable "aws_infra_key" {
    type = string
    nullable = false
}


provider "aws"{
    region="eu-west-1"
    access_key= var.aws_infra_key_id
    secret_key= var.aws_infra_key
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
    tags = {
        Name = "main"
    }
}