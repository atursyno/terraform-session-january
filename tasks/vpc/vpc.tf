#--------Create a VPC------

resource "aws_vpc""myvpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
      Name = var.vpc_name

  }
}
#------------Create 3 public subnets-------------

resource "aws_subnet" "public_subnet_name1"{
    vpc_id = aws_vpc.myvpc.id
    availibility_zone = var.availibility_zone_1
    cidr_block = "10.0.1.0/24"
    tags ={
        Name = var.public_subnet_name_1
    }
}

resource "aws_subnet" "public_subnet_name2"{
    vpc_id = aws_vpc.myvpc.id
    availibility_zone = var.availibility_zone_2
    cidr_block = "10.0.2.0/24"
    tags ={
        Name = var.public_subnet_name_2
    }
}
resource "aws_subnet" "public_subnet_name3"{
    vpc_id = aws_vpc.myvpc.id
    availibility_zone = var.availibility_zone_3
    cidr_block = "10.0.3.0/24"
    tags ={
        Name = var.public_subnet_name_3
    }
}


#------Create 3 private subnets--------


resource "aws_subnet" "private_subnet_name1"{
    vpc_id = aws_vpc.myvpc.id
    availibility_zone = var.availibility_zone_1
    cidr_block = "10.0.11.0/24"
    tags ={
        Name = var.private_subnet_name_1
    }
}

resource "aws_subnet" "private_subnet_name2"{
    vpc_id = aws_vpc.myvpc.id
    availibility_zone = var.availibility_zone_2
    cidr_block = "10.0.12.0/24"
    tags ={
        Name = var.private_subnet_name_2
    }
}
  resource "aws_subnet" "private_subnet_name3"{
    vpc_id = aws_vpc.myvpc.id
    availibility_zone = var.availibility_zone_3
    cidr_block = "10.0.13.0/24"
    tags ={
        Name = var.private_subnet_name_3
    }
}