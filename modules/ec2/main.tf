resource "aws_instance""mainec2"{
    ami = var.ami
    instance_type = var.instance_type
    tags = {
        Name = var.name
        Environment = "${var.name}-intance"
  } 
}
