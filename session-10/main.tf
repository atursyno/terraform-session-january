
module "ec2_sg"{
    source = "github.com/atursyno/terraform-session-january//modules/ec2?ref=v1.0.0"    # Where the child module is
   ##########Variables that we need here###########
    env = "stage"
    ami = "ami-05bfbece1ed5beb54"
    instance_type = "t2.micro"
}

module "security-group" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.17.1"

  name = "${var.env}-sg"
  vpc_id = module.vpc.vpc_id
  ingress_cidr_blocks      = ["0.0.0.0/0"]
  ingress_rules            = ["https-443-tcp"]
  ingress_with_cidr_blocks = [
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      description = "ports"
      cidr_blocks = var.cidr_0
    }
  ]
}


#----------Creating vpc using terraform rg--------------
module "vpc"{
    source = "terraform-aws-modules/vpc/aws"
    version = "3.18.0"

    name = "${var.env}-myvpc"
    cidr = var.vpc_cidr

    azs             = var.vpc_azs
   
    private_subnets = var.vpc_private_subnets
    public_subnets  = var.vpc_public_subnets

    #enable_nat_gateway = var.vpc_enable_nat_gateway

    tags = var.vpc_tags
    }
        

