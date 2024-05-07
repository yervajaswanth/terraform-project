resource "aws_launch_template" "web-template" {
    name = "web-tier-launch-template"
    image_id = var.image-id
    instance_type = var.instance-type
    key_name = var.key-name

    network_interfaces {
      device_index = 0
      security_groups = [aws_security_group.sg.id]
    }

    user_data = filebase64("userdata.sh")
    tag_specifications {
      resource_type = "instance"
      tags = {
        Name="web-tier-instances"
      }
    }
  
}