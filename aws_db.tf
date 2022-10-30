resource "aws_db_instance" "default" {
  allocated_storage    = 5
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "${var.db_name}"
  username             = "${var.db_user}"
  password             = "${var.db_password}"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
  apply_immediately = true
  backup_retention_period = 0
  publicly_accessible  = true
  vpc_security_group_ids = ["${aws_security_group.name.id}"]
  tags {
    Name = "mydb"
  }
}