
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
}
