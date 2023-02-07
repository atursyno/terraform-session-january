resource "aws_internet_gateway" "homework_internet_gateway" {
  vpc_id = aws_vpc.myvpc.id

  tags = {
    Name = "homework_ig"
  }
  }