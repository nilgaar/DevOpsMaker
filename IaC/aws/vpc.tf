provider "aws"{
    region="eu-west-1"
    access_key= env.AWS_INFRA_KEY_ID
    secret_key= env.AWS_INFRA_KEY
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
    tags = {
        Name = "main"
    }
}