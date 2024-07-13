resource "aws_key_pair" "ec2_key_pair" {
  key_name   = "ec2-key-pair"
  public_key = file("${path.module}/awsEC2s.pub")
}
