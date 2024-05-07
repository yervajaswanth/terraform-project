resource "aws_autoscaling_group" "asg-app" {
  name                = "app-asg"
  desired_capacity    = 1
  max_size            = 2
  min_size            = 1
  target_group_arns   = [aws_lb_target_group.target-group-app.arn]
  health_check_type   = "EC2"
  vpc_zone_identifier = [aws_subnet.app-private-1.id, aws_subnet.app-private-2.id]


  launch_template {
    id      = aws_launch_template.app-template.id
    version = aws_launch_template.app-template.latest_version
  }
}