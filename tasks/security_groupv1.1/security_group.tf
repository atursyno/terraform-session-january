#Open 10 more ports on the security group
#Every Resource has to have an environment specific name
resource "aws_security_group" "main_sg1" {   
  name        = "${var.sg_name}-dev"
  description = format("%s-andOpeningPorts", var.sg_name)
  vpc_id      = var.vpc_id

  ingress {
    from_port        = "${var.port2}-2"
    to_port          = "${var.port2}-2"
    protocol         = var.protocol1  
    cidr_blocks      = [var.cidr_block] 
  }
  ingress {
    from_port        = "${var.port2}-3"
    to_port          = "${var.port2}-3"
    protocol         = var.protocol1  
    cidr_blocks      = [var.cidr_block] 
  }
  ingress {
    from_port        = "${var.port2}-5"
    to_port          = "${var.port2}-5"
    protocol         = var.protocol1  
    cidr_blocks      = [var.cidr_block] 
  }
  ingress {
    from_port        = "${var.port2}-049"
    to_port          = "${var.port2}-049"
    protocol         = var.protocol1  
    cidr_blocks      = [var.cidr_block] 
  }

    ingress {
    from_port        = var.port443
    to_port          = var.port443
    protocol         = var.protocol1  
    cidr_blocks      = [var.cidr_block] 
  }
    ingress {
    from_port        = var.port80
    to_port          = var.port80
    protocol         = var.protocol1  
    cidr_blocks      = [var.cidr_block] 
  }
    ingress {
    from_port        = "${var.port2}-06"
    to_port          = "${var.port2}-06"
    protocol         = var.protocol1   
    cidr_blocks      = [var.cidr_block] 
  }
    ingress {
    from_port   = "${var.port2}-89"
    to_port     = "${var.port2}-89"
    protocol    = var.protocol1
    cidr_blocks = [var.cidr_block]
  }


  egress {
    from_port   = var.port443
    to_port     = var.port443
    protocol    = var.protocol1
    cidr_blocks = [var.cidr_block]
  }

  egress {
    from_port   = var.port80
    to_port     = var.port80
    protocol    = var.protocol1
    cidr_blocks = [var.cidr_block]
  }

}

