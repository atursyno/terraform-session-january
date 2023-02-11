resource "aws_instance" "ec2_class_task1" {
  count = 3 # meta argument, help you with replicating the resources
  ami           = data.aws_ami.amazon_linux_2.image_id
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.main_sg.id]
  tags = {
    Name        = "${var.env}-instance"
    Name1       = format("%s-instance", var.env)
  }
}
