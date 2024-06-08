variable "aws_infra_key_id" {
    type = string
    nullable = false
}
variable "aws_infra_key" {
    type = string
    nullable = false
}


provider "azurerm" {
    features {}
    client_id  = var.aws_infra_key_id
    
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
    tags = {
        Name = "main"
    }
}