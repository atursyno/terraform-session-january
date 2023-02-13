resource "aws_subnet" "private_subnet_namev2"{
    count  = 3
    vpc_id = aws_vpc.vpc_version2.id
    availability_zone = element(var.availability_zones, count.index)
    cidr_block = element(var.private_cidr_blocks, count.index)
    tags ={
        Name = "${var.env}-privateSubnet"
    }
}