#--------Create a public Route Table-------

resource "aws_route_table""publicRouteTable"{
    vpc_id = aws_vpc.myvpc.id
    route{
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.homework_internet_gateway.id

    tags = {
        Name = var.public_route_table
  }
}
}

#-------------Associate subnets to Public Route Table----------
resource "aws_route_table_association""public_routetable_1"{
    subnet_id = aws_subnet.public_subnet_name_1.id
    route_table_id = aws_route_table.publicRouteTable.id
    
}
resource "aws_route_table_association""public_routetable_2"{
    subnet_id = aws_subnet.public_subnet_name_2.id
    route_table_id = aws_route_table.publicRouteTable.id
    
}
resource "aws_route_table_association""public_routetable_3"{
    subnet_id = aws_subnet.public_subnet_name_3.id
    route_table_id = aws_route_table.publicRouteTable.id
    
}


#-------------Associate subnets to Private Route Table-----------
resource "aws_route_table_association""private_routetable_1"{
    subnet_id = aws_subnet.private_subnet_name_1.id
    route_table_id = aws_route_table.privateRouteTable.id
    
}
resource "aws_route_table_association""private_routetable_2"{
    subnet_id = aws_subnet.private_subnet_name_2.id
    route_table_id = aws_route_table.privateRouteTable.id
    
}
resource "aws_route_table_association""private_routetable_3"{
    subnet_id = aws_subnet.private_subnet_name_3.id
    route_table_id = aws_route_table.privateRouteTable.id
    
}

#-------------Create a private Route Table--------------
  resource "aws_route_table""privateRouteTable"{
    vpc_id = aws_vpc.myvpc.id
    route{
        gateway_id = Aws_nat_gateway.Homework_nat_gateway.id
    }

    tags = {
        Name = var.private_route_table
  }
  }


