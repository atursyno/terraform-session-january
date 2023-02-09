variable "vpc_env"{
    type = string
    description = "This is a vpc tag name for vpc"
    default = "vpc"
}
variable "cidr_block_vpc"{
    type = string
    description = "This is a cidr block for vpc"
    default = "10.0.0.0/16"
}
variable "region"{
    type = string
    description = "This is a region "
    default = "us-east-2"
}
#----Give a variable for InterNetGateway-------
variable "ig_name"{
    type = string
    description = "This is a region "
    default = "homework_ig"
}
#----Give a variable for NatGateway-------

variable "nat_gateway_name"{
    type = string
    description = "This is a NatGateWay tag name"
    default = "nat_gateWay_name"

}

variable "connectevity_type_ng"{
    type = string
    description = "This is connectivity type for NatGateWay"
    default = "public"

}

variable "eip"{
    type = string
    description = "This is a NatGateWay tag name"
    default = "elastic_ip"

}

variable "public_route_table_name"{
    type = string
    description = "This is a RouteTable tag name for Public Route Table"
    default = "public_route_table"

}

variable "private_route_table_name"{
    type = string
    description = "This is a RouteTable tag name for Private Route Table"
    default = "private_route_table"

}

variable "cidr_block_pb1"{
    type = string
    description = "This is a cidr block for public subnet"
    default = "10.0.1.0/24"

}


variable "cidr_block_pb2"{
    type = string
    description = "This is a cidr block for public subnet"
    default = "10.0.2.0/24"

}

variable "cidr_block_pb3"{
    type = string
    description = "This is a cidr block for public subnet"
    default = "10.0.3.0/24"

}

variable "cidr_block_pr1"{
    type = string
    description = "This is a cidr block for private subnet"
    default = "10.0.11.0/24"

}

variable "cidr_block_pr2"{
    type = string
    description = "This is a cidr block for private subnet"
    default = "10.0.12.0/24"

}

variable "cidr_block_pr3"{
    type = string
    description = "This is a cidr block for private subnet"
    default = "10.0.13.0/24"

}

variable "availibility_zone"{
    type = string
    description = "This is a availibility zone"
    default = "us-east-2"

}

variable "subnet"{
    type = string
    description = "This is a subnet tag name for subnet"
    default = "subnet"

}
variable "cidr_block"{
    type = string
    description = " This is a cidr block"
    default = "0.0.0.0/0"
}










