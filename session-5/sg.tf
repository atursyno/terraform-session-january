resource "aws_security_group" "main_sg" {   
  name        = "${var.env}_sg"
  description = format("%s-sg", var.env)
  #vpc_id      = var.vpc_id
}

resource "aws_security_group_rule""ingress"{
    count = 2
    type             = "ingress"
    from_port        = element(var.ports, count.index) # it will create 0,1  indexes 
    to_port          = element(var.ports, count.index)
    protocol         = "tcp"  # string
    cidr_blocks      = ["0.0.0.0/0"] # list of strings
    security_group_id = aws_security_group.main_sg.id
  }
  resource "aws_security_group_rule""egress"{
    count = length(var.ports_egress)  # means it will create whatever ports in variable and I dont have to change the count everytime if I want to add ports in var file
    type             = "egress"
    from_port        = element(var.ports_egress, count.index)
    to_port          = element(var.ports_egress, count.index)
    protocol         = "tcp"  # string
    cidr_blocks      = ["0.0.0.0/0"] # list of strings
    security_group_id = aws_security_group.main_sg.id
  }
