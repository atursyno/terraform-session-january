#Open 10 more ports on the security group
#Every Resource has to have an environment specific name
resource "aws_security_group" "main_sg1" {   
  name        = "${var.sg_env}-dev"
  description = format("%s-andOpeningPorts", var.sg_env)
  vpc_id      = var.vpc_id


  ingress {
    from_port        = var.port22
    to_port          = var.port22
    protocol         = var.protocol1  
    cidr_blocks      = [var.cidr_block] 
  }
  ingress {
    from_port        = var.port23
    to_port          = var.port23
    protocol         = var.protocol1  
    cidr_blocks      = [var.cidr_block] 
  }
  ingress {
    from_port        = var.port25
    to_port          = var.port25
    protocol         = var.protocol1  
    cidr_blocks      = [var.cidr_block] 
  }
  ingress {
    from_port        = var.port5439
    to_port          = var.port5439
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
    from_port   = var.port3389
    to_port     = var.port3389
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

