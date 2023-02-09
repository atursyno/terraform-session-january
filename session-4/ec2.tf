resource "aws_instance" "ec2_class_task" {
  ami           = data.aws_ami.amazon_linux_2.image_id
  instance_type = var.instance_type
  tags = {
    Name        = var.env-instance
  }
} 

resource "aws_instance" "ec2_class_task" {
  ami           = data.aws_ami.amazon_linux_2.image_id
  instance_type = var.instance_type
  tags = {
    Name        = var.env-frontend-instance
  }
} 