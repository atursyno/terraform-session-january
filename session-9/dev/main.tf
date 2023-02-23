module "mainec2"{
    source = "../../modules/ec2"    # Where the child module is
    ##########Variables that we need here###########
    env = "stage"
    ami = "ami-05bfbece1ed5beb54"
    instance_type = "t2.micro"
    name = "staging"
}

module "ec2_sg"{
    source = "../../modules/sg"    # Where the child module is
    ##########Variables that we need here###########
    env = "stage"
}
