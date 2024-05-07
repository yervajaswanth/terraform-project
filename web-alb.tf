resource "aws_lb" "alb-web" {
  name               = "webtier-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.sg.id]
  subnets            = [aws_subnet.web-public-1.id,aws_subnet.web-public-2.id]
}