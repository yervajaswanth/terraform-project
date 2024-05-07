resource "aws_lb_target_group" "target-group-app" {
  name     = "app-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.customvpc.id
  health_check {
    path    = "/"
    matcher = 200

  }
}
