resource "aws_subnet" "private_subnet_name1"{
    vpc_id = aws_vpc.vpc_demo.id
    availability_zone = "${var.availibility_zone}"
    cidr_block = "${var.private_subnet_cidr_blocks}
    tags ={
        Name = "${var.private_subnet}"
    }
}