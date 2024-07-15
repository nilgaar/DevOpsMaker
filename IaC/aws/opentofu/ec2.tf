resource "aws_instance" "ec2example" {
  ami                         = data.aws_ssm_parameter.ubuntu22.value
  instance_type               = "t3.micro"
  availability_zone           = var.region
  subnet_id                   = aws_subnet.subnet.id
  vpc_security_group_ids      = [aws_security_group.sec_group.id]
  associate_public_ip_address = true
  key_name                    = aws_key_pair.ec2_key_pair.key_name

  provisioner "remote-exec" {
    inline = [
      "echo 'Waiting for instance to be fully ready...'",
      "sleep 20"
    ]
  }

  provisioner "local-exec" {
    command = "ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -i '${self.public_ip},' ${path.module}/../../ansible/apache.yml -u 'ubuntu'"
  }

  connection {
    type = "ssh"
    user = "ubuntu"
    host = self.public_ip
  }
}
