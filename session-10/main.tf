
module "ec2_instance"{
    source = "terraform-aws-modules/ec2-instance/aws"    # Where the child module is
    version = "2.12.0"
 
    name = "ec2"
    ami  = "ami-05bfbece1ed5beb54"
    instance_type = "t2.micro"
    vpc_security_group_ids = [module.security-group.security_group_id]
    subnet_id = module.vpc.public_subnets[0]
    tags = {
        Terraform   = "true"
        Environment = "${var.env}-ec2"
  }
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

    tags = var.vpc_tags
    }
        

