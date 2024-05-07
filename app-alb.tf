resource "aws_lb" "alb-app" {
  name               = "app-tier-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.sg.id]
  subnets            = [aws_subnet.app-private-1.id, aws_subnet.app-private-2.id]
}

resource "aws_lb_listener" "alb_listener-app" {
  load_balancer_arn = aws_lb.alb-app.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.target-group-app.arn
  }
}