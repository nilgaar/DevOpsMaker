provider "aws"{
    region="eu-west-1"
    access_key= ${{ secrets.AWS_INFRA_KEY }}
    secret_key=${{ secrets.AWS_INFRA_KEY_ID }}
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
    tags = {
        Name = "main"
    }
}