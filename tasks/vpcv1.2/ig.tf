resource "aws_internet_gateway""my-igv2"{
    vpc_id = aws_vpc.vpc_version2.id
    tags ={
        Name = "${var.env}-ig"
        description = format("%s-this is my ig", var.env)
    }
}