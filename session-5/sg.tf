resource "aws_security_group" "main_sg" {   
  name        = "${var.env}-sg"
  description = format("%s-sg", var.env)
  #vpc_id      = var.vpc_id


resource "aws_security_group_rule""ingress"{
    type             = "ingress"
    from_port        = element (var.ports, 0)
    to_port          = element (var.ports, 0)
    protocol         = "tcp"  # string
    cidr_blocks      = ["0.0.0.0/0"] # list of strings
    security_group_id = aws_security_group.main_sg.id
  }

resource "aws_security_group_rule""egress"{
    type             = "egress"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"  # string
    cidr_blocks      = ["0.0.0.0/0"] # list of strings
    security_group_id = aws_security_group.main_sg.id
  }