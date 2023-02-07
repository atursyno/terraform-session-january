resource "aws_nat_gateway""homework_nat_gateway"{
    subnet_id = aws_subnet.public_subnet_name1.id
    tags ={
        Name = var.nat_gateWay_name.
    }
}