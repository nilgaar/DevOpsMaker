terraform {
  backend "s3" {
    bucket         = "tofu-backend-state"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "tofu-state-lock"
    encrypt        = true
  }
}
