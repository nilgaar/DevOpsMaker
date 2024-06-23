data "aws_ssm_parameter" "ubuntu22" {
  name = "/aws/service/canonical/ubuntu/server/22.04/stable/current/amd64/hvm/ebs-gp2/ami-id"
}

resource "aws_instance" "ec2example" {
  ami               = data.aws_ssm_parameter.ubuntu22.value
  instance_type     = "t3.micro"
  availability_zone = "eu-west-1a"
  subnet_id              = aws_subnet.subnet.id
  vpc_security_group_ids = [aws_security_group.sec_group.id]

  associate_public_ip_address = true

  user_data = <<EOF
#! /bin/bash
sudo apt update -y
sudo apt install apache2 -y
sudo systemctl start apache2
sudo systemctl enable apache2
echo "<h1>Deployed via Terraform</h1>" | sudo tee /var/www/html/index.html
EOF
}