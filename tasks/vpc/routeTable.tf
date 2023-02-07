#--------Create a public Route Table-------

resource "aws_route_table""publicRouteTable"{
    vpc_id = aws_vpc.myvpc.id
    route{
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.homework_internet_gateway.id

    tags = {
        Name = var.public_route_table
  }}
}

#-------------Associate subnets to Public Route Table----------
resource "aws_route_table_association""publicRouteTableAssociation"{
    subnet_id = aws_subnet.public_subnet_name1.id
    route_table_id = aws_route_table.publicRouteTable.id
    
}
resource "aws_route_table_association""publicRouteTableAssociation"{
    subnet_id = aws_subnet.public_subnet_name2.id
    route_table_id = aws_route_table.publicRouteTable.id
    
}
resource "aws_route_table_association""publicRouteTableAssociation"{
    subnet_id = aws_subnet.public_subnet_name3.id
    route_table_id = aws_route_table.publicRouteTable.id
    
}


#-------------Associate subnets to Private Route Table-----------
resource "aws_route_table_association""privateRouteTableAssociation"{
    subnet_id = aws_subnet.private_subnet_name1.id
    route_table_id = aws_route_table.privateRouteTable.id
    
}
resource "aws_route_table_association""privateRouteTableAssociation"{
    subnet_id = aws_subnet.private_subnet_name2.id
    route_table_id = aws_route_table.privateRouteTable.id
    
}
resource "aws_route_table_association""privateRouteTableAssociation"{
    subnet_id = aws_subnet.private_subnet_name3.id
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
  }}

