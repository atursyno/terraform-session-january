resource "aws_security_group" "main_sg1" {   
  name        = "${var.env}-sg"
  description = format("%s-sg", var.env)
  vpc_id      = var.vpc_id

}
resource "aws_security_group_rule""ingress"{
    count = 10
    type             = "ingress"
    from_port        = element(var.ports, count.index) # it will create 0,1  indexes 
    to_port          = element(var.ports, count.index)
    protocol         = var.protocols  # string
    cidr_blocks      = [var.cidr_block] # list of strings
    security_group_id = aws_security_group.main_sg.id
  }

  resource "aws_security_group_rule""egress"{
    count = 2
    type             = "egress"
    from_port        = element(var.ports, count.index) # it will create 0,1  indexes 
    to_port          = element(var.ports, count.index)
    protocol         = var.protocols # string
    cidr_blocks      = [var.cidr_block] # list of strings
    security_group_id = aws_security_group.main_sg.id
  }