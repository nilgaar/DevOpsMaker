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
    access_key= var.AWS_INFRA_KEY_ID
    secret_key= var.AWS_INFRA_KEY
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
    tags = {
        Name = "main"
    }
}