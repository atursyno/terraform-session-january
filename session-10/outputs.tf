output "vpc_id"{
    description = "vpc id"
    value = module.vpc.vpc_id
}
output "main_sg_id"{
    value = aws_security_group.main.id
    
}