output "vpc_id"{
    description = "vpc id"
    value = module.vpc.vpc_id
}
output "main_sg_id"{
    value = security-group.main.id
    
}