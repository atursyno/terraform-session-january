
module "ec2_sg"{
    source = "github.com/atursyno/terraform-session-january//modules/ec2?ref=v1.0.0"    # Where the child module is
    ##########Variables that we need here###########
    env = "stage"
    ami = "ami-05bfbece1ed5beb54"
    instance_type = "t2.micro"
}
module "vpc"{
    source = "terraform-aws-modules/vpc/aws"
    version = "3.18.0"

    name = "vpc-using-tf-registry"
    cidr = "10.0.0.0/16"
    instance_tenancy = "default"
    azs = [var.az1, var.az2]
    public_subnets = ["10.0.1.0./24", "10.0.2.0/24"]
    private_subnets = ["10.0.11.0./24", "10.0.12.0/24"]

    enable_nat_gateway = true

    tags = {
    Terraform = "true"
    Environment = "dev"
  }
}


    

