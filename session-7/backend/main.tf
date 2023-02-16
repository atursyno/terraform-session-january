resource "aws_db_instance" "main" {
  allocated_storage    = 10
  identifier           = replace(local.name, "resource", "rds") # name of the rds instance 
  db_name              = "mydb" # name of the database 
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  username             = "foo" # admin user
  password             = random_password.db_password.result
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = var.env != "prod" ? true : false    # if env = dev, true
  final_snapshot_identifier = var.env != "prod" ? null : "${var.env}-db-final-snapshot"  #if env = dev, null
}
resource "random_password" "db_password"{
    length = 20
    special = true
    override_special = "%@"
}

