resource "aws_security_group" "main_sgv1" {   
  name        = "${var.env}-sgv1"
  description = format("%s-sgv1", var.env)
  vpc_id      = var.vpc_id

}
resource "aws_security_group_rule""ingress"{
    count = 10
    type             = "ingress"
    from_port        = element(var.ports, count.index) # it will create 0,1  indexes 
    to_port          = element(var.ports, count.index)
    protocol         = element(var.protocols, count.index)  # string
    cidr_blocks      = element(var.cidr_blocks, count.index) # list of strings
    security_group_id = aws_security_group.main_sgv1.id
  }

  resource "aws_security_group_rule""egress"{
    count = 2
    type             = "egress"
    from_port        = element(var.ports, count.index) # it will create 0,1  indexes 
    to_port          = element(var.ports, count.index)
    protocol         = element(var.protocols, count.index) # string
    cidr_blocks      = element(var.cidr_blocks, count.index) # list of strings
    security_group_id = aws_security_group.main_sgv1.id
  }