variable "vpc_id" {
    type = string
    description = "This is vpc id"
    default = "vpc-0f273f0c703b9d1f3"
}

variable "env"{
    type = string
    description = " This is a sg name"
    default = "dev"
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


variable "port22"{
    type = string
    description = " This is a port starting from 2 to ~>"
    default = "22"
}
variable "port23"{
    type = string
    description = " This is a port starting from 2 to ~>"
    default = "23"
}
variable "port25"{
    type = string
    description = " This is a port starting from 2 to ~>"
    default = "25"
}


variable "port80"{
    type = string
    description = " This is a port 22"
    default = "80"
}
variable "port3389"{
    type = string
    description = " This is a port starting from 3 to ~>"
    default = "3389"
}
variable "port3306"{
    type = string
    description = " This is a port starting from 3 to ~>"
    default = "3306"
}
variable "port443"{
    type = string
    description = " This is a port 443"
    default = "443"
}
variable "port5439"{
    type = string
    description = " This is a port 443"
    default = "5439"
}

