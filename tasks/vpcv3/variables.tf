variable "region"{
    default = "us-east-2"
}

variable "env"{
    type = string
    description = " This is an intance env for EC2 Instance"
    default = "dev"
}

variable "cidr_block_vpc"{
    type = list(string)
    description = "This is a cidr block lists for vpc"
    default = ["0.0.0.0/0","10.0.0.0/16"]
}


variable "connectevity_types"{
    type = list(string)
    description = "These are connectivity types for Nat GateWay"
    default = ["public", "private"]

}

variable "eip"{
    type = string
    description = "This is an eip"
    default = "elastic_ip"

}

variable "public_cidr_blocks" {
    type = list(string)
    description = "These are cidr blocks for public subnets"
    default = [ "10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24" ] 
}
variable "private_cidr_blocks" {
    type = list(string)
    description = "These are cidr blocks for private subnets"
    default = [ "10.0.11.0/24", "10.0.12.0/24", "10.0.13.0/24" ] 
}
variable "availability_zones" {
    type = list(string)
    description = "These are availability zones"
    default = [ "us-east-2a", "us-east-2b", "us-east-2c" ]
}
