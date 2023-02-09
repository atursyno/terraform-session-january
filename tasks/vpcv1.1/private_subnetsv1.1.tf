
#------Create 3 private subnets--------


resource "aws_subnet" "private_subnet_name1"{
    vpc_id = aws_vpc.myvpc.id
    availability_zone = "${var.availibility_zone}-a"
    cidr_block = var.cidr_block_pr1
    tags ={
        Name = format("%s-public01", var.subnet)
    }
}

resource "aws_subnet" "private_subnet_name2"{
    vpc_id = aws_vpc.myvpc.id
    availability_zone = "${var.availibility_zone}-b"
    cidr_block = var.cidr_block_pr2
    tags ={
        Name = format("%s-public01", var.subnet)
    }
}
  resource "aws_subnet" "private_subnet_name3"{
    vpc_id = aws_vpc.myvpc.id
    availability_zone = "${var.availibility_zone}-c"
    cidr_block = cidr_block_pr3
    tags ={
        Name = format("%s-public01", var.subnet)
    }
}
