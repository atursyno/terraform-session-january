variable "vpc_id" {
    type = string
    description = "This is vpc id"
    default = "vpc-0f273f0c703b9d1f3"
}

variable "sg_name"{
    type = string
    description = " This is a sg name"
    default = "security_group"
}

variable "protocol1"{
    type = string
    description = " This is a protocol type"
    default = "tcp"
}
variable "protocol2"{
    type = string
    description = " This is a protocol type"
    default = "udp"
}

variable "cidr_block"{
    type = string
    description = " This is a cidr block"
    default = "0.0.0.0/0"
}

