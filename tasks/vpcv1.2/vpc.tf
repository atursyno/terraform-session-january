resource "aws_vpc""vpc_version2"{
cidr_block = "${var.cidr_block_vpc[1]}"
tags = {
    Name = "${var.env}-vpc
}
}
