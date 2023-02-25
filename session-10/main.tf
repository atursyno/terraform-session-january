
module "ec2_sg"{
    source = "github.com/atursyno/terraform-session-january/main/modules/ec2"    # Where the child module is
    ##########Variables that we need here###########
    env = "stage"
    ami = "ami-05bfbece1ed5beb54"
    instance_type = "t2.micro"
}

