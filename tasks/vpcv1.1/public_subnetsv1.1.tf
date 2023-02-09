#------------Create 3 public subnets-------------

resource "aws_subnet" "public_subnet_name1"{
    vpc_id = aws_vpc.myvpc_v1.id
    availability_zone = "${var.availibility_zone}a"
    cidr_block = var.cidr_block_pb1
    tags ={
        Name = format("%s-public01", var.subnet)
    }
}

resource "aws_subnet" "public_subnet_name2"{
    vpc_id = aws_vpc.myvpc_v1.id
    availability_zone = "${var.availibility_zone}b"
    cidr_block = var.cidr_block_pb2
    tags ={
        Name = format("%s-public02", var.subnet)
    }
}
resource "aws_subnet" "public_subnet_name3"{
    vpc_id = aws_vpc.myvpc_v1.id
    availability_zone = "${var.availibility_zone}c"
    cidr_block = var.cidr_block_pb3
    tags ={
        Name = format("%s-public03", var.subnet)
    }
}