#---------Create a NatGateway in one of the Public Subnet------

resource "aws_nat_gateway""nat_gateway_v2"{
    subnet_id = aws_subnet.public_subnet_namev2.id
    connectivity_type = var.connectevity_type_ng
    allocation_id = aws_eip.nat_gateway_eip.id
    tags ={
        Name = "${var.env}-ng"
    }
}