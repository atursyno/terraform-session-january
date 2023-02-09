#--------Create a VPC------

resource "aws_vpc""myvpc_v1" {
  cidr_block = var.cidr_block_vpc
  tags = {
      Name = "${var.vpc_env}-dev"

  }
}

resource "aws_vpc""myvpc_v1.1" {
  cidr_block = var.cidr_block_vpc
  tags = {
      Name = "${var.vpc_env}-qa"

  }
}