#-----Giving variable for provider-------
variable "region" {
    default = "us-east-2"
}
variable "vpc_id" {
    type = string
    description = "This is vpc id"
    default = "vpc-0f273f0c703b9d1f3"
}

variable "env"{
    type = string
    description = " This is an intance env for EC2 Instance"
    default = "dev"
}


variable "ports"{
    type = list(string)
    description = "These inbound rules for Security Group"
    default = [22,23,25,80,443,3306,3389,5439,1433,2049]
}

variable "protocol"{
    type = string
    description = " This is a protocol type"
    default = "tcp"
}

variable "cidr_blocks"{
    type = string
    description = " This is a cidr block"
    default = "0.0.0.0/0"
}
