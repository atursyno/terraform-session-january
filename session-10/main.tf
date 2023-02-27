
#module "ec2_sg"{
#    source = "github.com/atursyno/terraform-session-january//modules/ec2?ref=v1.0.0"    # Where the child module is
#   ##########Variables that we need here###########
#    env = "stage"
#    ami = "ami-05bfbece1ed5beb54"
#    instance_type = "t2.micro"
#}
#----------Creating vpc using terraform rg--------------
module "vpc"{
    source = "terraform-aws-modules/vpc/aws"
    version = "3.18.0"

    name = "${var.env}-myvpc"
    cidr = var.vpc_cidr

    azs             = var.vpc_azs
    #-------
    private_subnets = var.vpc_private_subnets
    public_subnets  = var.vpc_public_subnets

    #enable_nat_gateway = var.vpc_enable_nat_gateway

    tags = var.vpc_tags
    }
        

