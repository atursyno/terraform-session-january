resource "aws_route_table""publicRouteTable"{
    vpc_id = aws_vpc.myvpc.id
    route{
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.homework_internet_gateway.id

    tags = {
        Name = var.publicRouteTable
  }}
}
  resource "aws_route_table""privateRouteTable"{
    vpc_id = aws_vpc.myvpc.id
    route{
        gateway_id = Aws_nat_gateway.Homework_nat_gateway.id
    }

    tags = {
        Name = var.privateRouteTable
  }}


