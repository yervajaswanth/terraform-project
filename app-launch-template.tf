resource "aws_launch_template" "app-template" {
  name          = "apptier-launch-template"
  image_id      = var.image-id
  instance_type = var.instance-type
  key_name      = var.key-name

  network_interfaces {
    device_index    = 0
    security_groups = [aws_security_group.sg.id]
  }

  tag_specifications {

    resource_type = "instance"
    tags = {
      Name = "apptier-launch-template"
    }
  }
}