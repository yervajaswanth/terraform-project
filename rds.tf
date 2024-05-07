resource "aws_rds_instance" "data-base" {
  db_subnet_group_name = aws_db_subnet_group.subnet-droup.name
  multi_az=false
  skip_final_snapshot=true
  allocated_storage=10
  db_name="rds-db"
  engine = "mysql"
  instance_class = var.instance-class
  parameter_group_name="default.mysql5.7"
  vpc_security_group_ids = [aws_security_group.sg.id]
  username="admin"
  password="admin"
 
}