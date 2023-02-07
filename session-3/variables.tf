variable "instance_type"{
    type = string
    description = " This is an intance type for EC2 Instance"
    default = "t2.micro"

}
variable "ami"{
    type = string
    description = " This is an AMI for EC2 Instance"
    default = "ami-05bfbece1ed5beb54"

}
variable "env"{
    type = string
    description = "Indicates the environment"
    default = "dev"

}