

resource "aws_ebs_volume" "ebs_example" {
  availability_zone = "eu-west-1a"
  size              = 1
}

resource "aws_instance" "ec2example" {
  ami               = "ami-0705384c0b33c194c"
  instance_type     = "t2.micro"
  availability_zone = "eu-west-1a"
  ebs_block_device {
    device_name = "/dev/sdh"
    volume_id   = aws_ebs_volume.ebs_example.id
  }
  # subnet and security group from:  ./vpn_network.tf
  subnet_id              = aws_subnet.subnet.id
  vpc_security_group_ids = [aws_security_group.sec_group.id]

  user_data = <<EOF
    #!/bin/bash
    sudo apt-get update -y
    sudo apt-get install nginx -y
    sudo systemctl enable nginx
    sudo systemctl start nginx
    sudo rm /var/www/html/index.nginx-debian.html
    echo "<h1>Welcome to Terraform</h1>" | sudo tee /var/www/html/index.html
    EOF
}

