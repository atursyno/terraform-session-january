resource "aws_instance" "first_ec2" {
  ami = "ami-05bfbece1ed5beb54"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.main_sg.id]
  
}