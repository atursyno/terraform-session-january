resource "aws_route_table""public_route"{
vpc_id = aws_vpc.vpc_version2.id
tags = {
    Name = "${var.env}-public-rt"
}
}
resource "aws_route""default_public_route"{
    route_table_id = aws_route_table.public_route.id
    destination_cidr_block = var.cidr_block
    gateway_id = aws_internet_gateway.my-igv2.id
}
