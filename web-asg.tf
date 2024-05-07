resource "aws_autoscaling_group" "asg-web" {
  name                = "webtier-asg"
  desired_capacity    = 1
  max_size            = 3
  min_size            = 1
  target_group_arns   = [aws_lb_target_group.target-group-web.arn]
  health_check_type   = "EC2"
  vpc_zone_identifier = [aws_subnet.web-public-1.id,aws_subnet.web-public-2.id]


  launch_template {
    id      = aws_launch_template.web-template.id
    version = aws_launch_template.web-template.latest_version
  }
}