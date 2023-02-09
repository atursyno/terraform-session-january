resource "aws_instance" "ec2_class_task1" {
  ami           = data.aws_ami.amazon_linux_2.image_id
  instance_type = var.instance_type
  vpc_id = data.aws_vpc.vpc_custom.id
  vpc_security_group_ids = [aws_security_group.main_sg1.id]
  tags = {
    Name        = "${var.env}-instance"
    Name1       = format("%s-instance", var.env)
  }
} 

resource "aws_instance" "ec2_class_task2" {
  ami           = data.aws_ami.amazon_linux_2.image_id
  instance_type = var.instance_type
  tags = {
    Name        = "${var.env}-frontend-instance"
    Name1       = format("%s-frontend-instance", var.env)
  }
} 