#--------Create a VPC------

resource "aws_vpc""myvpc_v1" {
  cidr_block = var.cidr_block
  tags = {
      Name = var.vpc_name

  }
}