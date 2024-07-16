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

}

resource "aws_lb" "lb" {
  name               = "asg-example-lb"
  load_balancer_type = "application"
  security_groups    = [aws_security_group.sec_group.id]
  subnets            = aws_subnet.asg_subnet.id
}

resource "aws_lb_listener" "lb_listener" {
  load_balancer_arn = aws_lb.lb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.lb_target_group.arn
  }
}

resource "aws_autoscaling_group" "asg_example" {
  desired_capacity          = 1
  max_size                  = 1
  min_size                  = 1
  health_check_grace_period = 300
  launch_configuration      = aws_launch_configuration.launch_configuration.name
  vpc_zone_identifier       = [aws_subnet.asg_subnet.id]
  target_group_arns         = [aws_lb_target_group.lb_target_group.arn]
  health_check_type         = "ELB"


  tag {
    key                 = "Name"
    value               = "asg-example"
    propagate_at_launch = true
  }

}

resource "aws_lb_target_group" "lb_target_group" {
  name     = "asg-example-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.vpc.id

  health_check {
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    interval            = 5
  }

}


output "lb_dns_name" {
  value = aws_lb.lb.dns_name

}
