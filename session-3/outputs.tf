output "instance_ip_address"{
    value = aws_instance.first_ec2.public_ip
    description = "The public ip address of main EC2 Instance"
}
output "instance_state"{
    value = aws_instance.first_ec2.instance_state
    description = "The public ip address of main EC2 Instance"
}