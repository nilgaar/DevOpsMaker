resource "aws_vpc" "vpc" {
  cidr_block = "10.0.0.0/16"
  enable_dns_support = true
}

resource "aws_internet_gateway" "gateaway" {
  vpc_id = aws_vpc.vpc.id
}

resource "aws_subnet" "subnet" {
  vpc_id = aws_vpc.vpc.id
  cidr_block = "10.0.0.0/24"
  availability_zone = "eu-west-1a"
  map_public_ip_on_launch = true
}