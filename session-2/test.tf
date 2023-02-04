resource "aws_instance" "mywebEc2"{
   ami = "ami-05bfbece1ed5beb54"
   instance_type = "t2.micro" 
}