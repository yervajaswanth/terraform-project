resource "aws_route_table" "private-route-table" {
  vpc_id = aws_vpc.customvpc.id
  tags = {
    Name = "private-route-table"
  }
}

resource "aws_route_table_association" "private-rt-1" {
    subnet_id = aws_subnet.app-private-1.id
    route_table_id = aws_route_table.private-route-table.id
  
}
resource "aws_route_table_association" "private-rt-2" {
    subnet_id = aws_subnet.app-private-2.id
    route_table_id = aws_route_table.private-route-table.id
  
}
resource "aws_route_table_association" "private-rt-3" {
    subnet_id = aws_subnet.db-private-1.id
    route_table_id = aws_route_table.private-route-table.id
  
}
resource "aws_route_table_association" "private-rt-4" {
    subnet_id = aws_subnet.db-private-2.id
    route_table_id = aws_route_table.private-route-table.id
  
}