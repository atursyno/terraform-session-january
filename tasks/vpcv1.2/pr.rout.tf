resource "aws_route_table""private_route"{
vpc_id = aws_vpc.vpc_version2.id
tags = {
    Name = "${var.env}-private-rt"
}
}
resource "aws_route""default_private_route"{
    route_table_id = aws_route_table.private_route.id
    destination_cidr_block = "${var.cidr_block_vpc[0]}"
    gateway_id = aws_internet_gateway.my-igv2.id
}