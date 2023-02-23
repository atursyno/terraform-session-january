resource "aws_instance""mainec2"{
    ami = var.ami
    instance_type = var.instance_type
    vpc_security_group_ids = var.sg
    tags = {
        Name = var.name
        Environment = "${var.name}-intance"
  } 
}
