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


variable "port2"{
    type = string
    description = " This is a port starting from 2 to ~>"
    default = "2"
}
variable "port80"{
    type = string
    description = " This is a port 22"
    default = "80"
}
variable "port3"{
    type = string
    description = " This is a port starting from 3 to ~>"
    default = "33"
}
variable "port443"{
    type = string
    description = " This is a port 443"
    default = "443"
}

