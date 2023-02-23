variable "env"{
    type = string
    default = "dev"
    description = "This variable "
}
variable "ami"{
    type = string
    description = " This is an AMI for EC2 Instance"
    default = ""

}

variable "name"{
    type = string
    description = "Indicates the environment"
    default = "development"

}

variable "instance_type"{
    type = string
    description = "Instance size"
    default = "t2.micro"

}
variable "sg"{
    type = list(string)
    description = "list of security group ids"
    default = [""]

}