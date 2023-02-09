#Open 10 more ports on the security group
#Every Resource has to have an environment specific name
resource "aws_security_group" "main_sg1" {   
  name        = "${var.sg_name}-dev"
  description = format("%s-andOpeningPorts", var.sg_name)
  vpc_id      = aws_vpc.myvpc.id

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = var.protocol1  
    cidr_blocks      = [var.cidr_block] 
  }
  ingress {
    from_port        = 23
    to_port          = 23
    protocol         = var.protocol1  
    cidr_blocks      = [var.cidr_block] 
  }

    ingress {
    from_port        = 443
    to_port          = 443
    protocol         = var.protocol1  
    cidr_blocks      = [var.cidr_block] 
  }
    ingress {
    from_port        = 80
    to_port          = 80
    protocol         = var.protocol1  
    cidr_blocks      = [var.cidr_block] 
  }
    ingress {
    from_port        = 3306
    to_port          = 3306
    protocol         = var.protocol1   
    cidr_blocks      = [var.cidr_block] 
  }
    ingress {
    from_port   = 3889
    to_port     = 3889
    protocol    = var.protocol1
    cidr_blocks = [var.cidr_block]
  }

    ingress {
    from_port   = 3889
    to_port     = 3889
    protocol    = var.protocol2
    cidr_blocks = [var.cidr_block]
    #security_group_id = aws_security_group.main_sg1.id
  }

  egress {
    from_port   = 443
    to_port     = 443
    protocol    = var.protocol1
    cidr_blocks = [var.cidr_block]
  }

  egress {
    from_port   = 80
    to_port     = 80
    protocol    = var.protocol1
    cidr_blocks = [var.cidr_block]
  }
   egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1" # string # All ports and protocols
    cidr_blocks      = [var.cidr_block] 
  }
}

