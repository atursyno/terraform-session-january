resource "aws_route_table""public_route_table"{
    vpc_id = aws_vpc.myvpc.id
    tags = {
        Name = var.public_route_table_name
  }
}

resource "aws_route""default_public_route"{
    route_table_id = aws_route_table.public_route_table.id
    destination_cidr_block = var.cidr_block
    gateway_id = aws_internet_gateway.homework_internet_gateway.id
}


#-------------Associate subnets to Public Route Table----------
resource "aws_route_table_association""public_routetable1"{
    subnet_id = aws_subnet.public_subnet_name1.id
    route_table_id = aws_route_table.public_route_table.id
    
}
resource "aws_route_table_association""public_routetable2"{
    subnet_id = aws_subnet.public_subnet_name2.id
    route_table_id = aws_route_table.public_route_table.id
    
}
resource "aws_route_table_association""public_routetable3"{
    subnet_id = aws_subnet.public_subnet_name3.id
    route_table_id = aws_route_table.public_route_table.id
    
}
