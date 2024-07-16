resource "aws_launch_configuration" "launch_configuration" {
  name                        = "asg-launch-config"
  image_id                    = data.aws_ssm_parameter.ubuntu22.value
  instance_type               = "t2.micro"
  security_groups             = [aws_security_group.sec_group.id]
  key_name                    = aws_key_pair.ec2_key_pair.key_name
  associate_public_ip_address = true

  lifecycle {
    create_before_destroy = true
  }

  depends_on = [aws_key_pair.ec2_key_pair]

}

resource "aws_autoscaling_group" "asg_example" {
  desired_capacity          = 1
  max_size                  = 1
  min_size                  = 1
  health_check_grace_period = 300
  health_check_type         = "EC2"
  launch_configuration      = aws_launch_configuration.launch_configuration.name
  vpc_zone_identifier       = [aws_subnet.asg_subnet.id]
  #   target_group_arns         = [aws_lb_target_group.example.arn]
  tag {
    key                 = "Name"
    value               = "asg-example"
    propagate_at_launch = true
  }

}
