data "aws_ssm_parameter" "ubuntu22" {
  name = "/aws/service/canonical/ubuntu/server/22.04/stable/current/amd64/hvm/ebs-gp2/ami-id"
}

resource "aws_instance" "ec2example" {
  ami                         = data.aws_ssm_parameter.ubuntu22.value
  instance_type               = "t3.micro"
  availability_zone           = "eu-west-1a"
  subnet_id                   = aws_subnet.subnet.id
  vpc_security_group_ids      = [aws_security_group.sec_group.id]
  associate_public_ip_address = true
  key_name                    = aws_key_pair.ec2_key_pair.key_name

  provisioner "local-exec" {
    command = "ansible-playbook -i '${self.public_ip},' --private-key ${path.module}/ ansible/playbook.yml"
  }

  provisioner "remote-exec" {
    inline = [
      "echo 'Waiting for instance to be ready'"
    ]
  }
}
