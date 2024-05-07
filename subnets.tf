resource "aws_subnet" "web-public-1" {
    vpc_id = aws_vpc.customvpc.id
    availability_zone = var.az-1
    cidr_block = var.web-public-1-cidr
    map_public_ip_on_launch = true
    tags = {
      Name = "web-public-1"
    }
}
resource "aws_subnet" "web-public-2" {
    vpc_id = aws_vpc.customvpc.id
    availability_zone = var.az-2
    cidr_block = var.web-public-2-cidr
    map_public_ip_on_launch = true
    tags = {
      Name = "web-public-2"
    }
}
resource "aws_subnet" "app-private-1" {
    vpc_id = aws_vpc.customvpc.id
    availability_zone = var.az-1
    cidr_block = var.app-private-1-cidr
    map_public_ip_on_launch =false
    tags = {
      Name = "app-private-1"
    }
}
resource "aws_subnet" "app-private-2" {
    vpc_id = aws_vpc.customvpc.id
    availability_zone = var.az-2
    cidr_block = var.app-private-2-cidr
    map_public_ip_on_launch = false
    tags = {
      Name = "app-private-2"
    }
}

resource "aws_subnet" "db-private-1" {
    vpc_id = aws_vpc.customvpc.id
    availability_zone = var.az-1
    cidr_block = var.db-private-1-cidr
    map_public_ip_on_launch = false
    tags = {
      Name = "db-private-1"
    }
}
resource "aws_subnet" "db-private-2" {
    vpc_id = aws_vpc.customvpc.id
    availability_zone = var.az-1
    cidr_block = var.db-private-2-cidr
    map_public_ip_on_launch = false
    tags = {
      Name = "db-private-2"
    }
}