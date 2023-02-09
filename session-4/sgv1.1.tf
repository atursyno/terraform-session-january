resource "aws_security_group" "main_sg1" {   
  name        = "${var.sg_name}-dev"
  description = "Allow SSH inbound traffic"
  vpc_id = aws_vpc.myvpc.id

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = var.protocol  # string
    cidr_blocks      = [var.cidr_block] # list of strings
  }
  ingress {
    from_port        = 23
    to_port          = 23
    protocol         = var.protocol  # string
    cidr_blocks      = ["0.0.0.0/0"] # list of strings
  }

    ingress {
    from_port        = 443
    to_port          = 443
    protocol         = var.protocol  # string
    cidr_blocks      = ["0.0.0.0/0"] # list of strings
  }
    ingress {
    from_port        = 80
    to_port          = 80
    protocol         = var.protocol  # string
    cidr_blocks      = ["0.0.0.0/0"] # list of strings
  }
    ingress {
    from_port        = 3306
    to_port          = 3306
    protocol         = var.protocol  # string
    cidr_blocks      = ["0.0.0.0/0"] # list of strings
  }
    ingress {
    from_port   = 3889
    to_port     = 3889
    protocol    = var.protocol
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 3889
    to_port     = 3889
    protocol    = "udp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 443
    to_port     = 443
    protocol    = var.protocol
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 80
    to_port     = 80
    protocol    = var.protocol
    cidr_blocks = ["0.0.0.0/0"]
  }
   egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1" # string # All ports and protocols
    cidr_blocks      = ["0.0.0.0/0"] 
  }
}

#Open 10 more ports on the security group
#Every Resource has to have an environment specific name