variable "instance_type"{
    type = string
    description = " This is an intance type for EC2 Instance"
    default = "t2.micro"
}
variable "env"{
    type = string
    description = " This is an intance env for EC2 Instance"
    default = "dev"
}
variable "sg_name"{
    type = string
    description = " This is a sg name"
    default = "security_group"
}