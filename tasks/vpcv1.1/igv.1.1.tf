resource "aws_internet_gateway" "homework_internet_gateway" {
  vpc_id = aws_vpc.myvpc_v1.id

  tags = {
    Name = var.ig_name
  }
  }