variable "vpc_name"{
    type = string
    description = "This is a vpc tag name for vpc"
    default = "my-vpc"
}
variable "public_subnet_name_1"{
    type = string
    description = "This is a subnet tag name for subnet"
    default = "public_subnet_01"

}
variable "public_subnet_name_2"{
    type = string
    description = "This is a subnet tag name for subnet"
    default = "public_subnet_01"

}
variable "public_subnet_name_3"{
    type = string
    description = "This is a subnet tag name for subnet"
    default = "public_subnet_02"

}

variable "private_subnet_name_1"{
    type = string
    description = "This is a subnet tag name for subnet"
    default = "private_subnet_01"

}
variable "private_subnet_name_2"{
    type = string
    description = "This is a subnet tag name for subnet"
    default = "private_subnet_02"

}
variable "private_subnet_name_3"{
    type = string
    description = "This is a subnet tag name for subnet"
    default = "private_subnet_03"

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

variable "nat_gateway_name"{
    type = string
    description = "This is a NatGateWay tag name"
    default = "nat_gateWay_name"

}

variable "availibility_zone_1"{
    type = string
    description = "This is a availibility zone"
    default = "us-east-2a"

}

variable "availibility_zone_2"{
    type = string
    description = "This is a availibility zone"
    default = "us-east-2b"

}

variable "availibility_zone_3"{
    type = string
    description = "This is a availibility zone"
    default = "us-east-2c"

}