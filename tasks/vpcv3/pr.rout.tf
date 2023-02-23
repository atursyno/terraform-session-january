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

#-------------Associate subnets to Private Route Table-----------
resource "aws_route_table_association""private_routetable1"{
    count = "${length(var.private_cidr_blocks)}"
    subnet_id = "${element(aws_subnet.private_subnet_namev2.*.id, count.index)}"
    #subnet_id = aws_subnet.private_subnet_namev2.id
    route_table_id = aws_route_table.private_route.id
    
}
