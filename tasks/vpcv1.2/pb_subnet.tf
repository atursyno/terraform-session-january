resource "aws_subnet" "public_subnet_namev2"{
    count  = 3
    vpc_id = aws_vpc.vpc_version2.id
    availability_zone = element(var.availability_zones, index.count)
    cidr_block = element(var.public_cidr_blocks, index.count)
    tags ={
        Name = "${var.env}-publicSubnet"
    }
}