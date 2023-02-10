variable "vpc_name"{
    type = string
    description = "This is a vpc name"
    default = "My_vpc_demo"

}


variable "availibility_zone"{
    type = string
    description = "This is a availibility zone"
    default = "us-east-2"

}
variable "public_route_tb_name"{
    type = string
    description = "This is a public route Table"
    default = "public_route_table"

}

variable "vpc_cidr_block" {}

variable "public_subnet_cidr_blocks" {
  type = "list"
}

variable "private_subnet_cidr_blocks" {
  type = "list"
}