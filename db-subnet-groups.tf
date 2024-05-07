resource "aws_db_subnet_group" "subnet-droup" {
  subnet_ids = [aws_subnet.db-private-1.id,aws_subnet.db-private-2.id]
  tags = {
    Name = "subnet-group"
  }
}