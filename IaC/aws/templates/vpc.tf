variable "AWS_ACCESS_KEY_ID" {}
variable "AWS_SECRET_ACCESS_KEY" {}

provider "aws"{
    region="eu-west-1"

}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
    tags = {
        Name = "main"
    }
}