resource "aws_route_table" "public-route-table" {
    vpc_id = aws_vpc.customvpc.id
      route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

    tags = {
      Name ="public-route-table"
    }
}

resource "aws_route_table_association" "public-rt" {
   subnet_id = aws_subnet.web-public-1.id
    route_table_id = aws_route_table.public-route-table.id

}

resource "aws_route_table_association" "public-rt-2" {
   subnet_id = aws_subnet.web-public-2.id
    route_table_id = aws_route_table.public-route-table.id

}