data "aws_ami" "amazon_linux_2" {
  most_recent      = true
  owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-2.0.*"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}

data "aws_vpc" "vpc_custom" {
  most_recent      = true
  owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["vpc-0bc57a35ae59d357b"]
  }

}
