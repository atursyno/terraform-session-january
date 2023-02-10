resource "aws_vpc""vpc_demo"
cidr_block = "${var.vpc_cidr_block}"
tags = {
    Name = var.vpc_name
}

#------------Create 3 public subnets-------------

resource "aws_subnet" "public_subnet_name1"{
    vpc_id = aws_vpc.vpc_demo.id
    availability_zone = "${var.availibility_zone}"
    cidr_block = "${var.public_subnet_cidr_blocks}
    tags ={
        Name = "${var.subnet}"
    }
}


