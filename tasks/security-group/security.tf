provider "aws" {
  region = "us-east-2"
}

resource "aws_security_group" "main" {
  name        = "main"
  description = "Allow ports inbound traffic"
}
  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "-1"
    cidr_blocks      = [0.0.0.0/0]
  }
  ingress {
    from_port        = 80
    to_port          = 80
    protocol         = "-1"
    cidr_blocks      = [0.0.0.0/0]
  }
  ingress {
    from_port        = 443
    to_port          = 443
    protocol         = "-1"
    cidr_blocks      = [0.0.0.0/0]
  }
  ingress {
    from_port        = 3306
    to_port          = 3306
    protocol         = "-1"
    cidr_blocks      = [0.0.0.0/0]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }