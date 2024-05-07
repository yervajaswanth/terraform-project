resource "aws_vpc" "customvpc" {
    cidr_block = var.cidr-block

    tags = {
      Name = "customvpc"
    }
  
}