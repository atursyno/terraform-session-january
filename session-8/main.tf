resource "aws_instance" "main" {
  ami = data.aws_ami.amazon_linux_2.image_id
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.main_sg.id]
  key_name = aws_key_pair.terraform_server.key_name

  provisioner "file"{
    source = "~/terraform-session-january/session-8/index.html" #path on Terraform Server
    destination = "/tmp/index.html" #path for the remote server 

    connection {
      type = "ssh"
      user = "ec2-user"
      host = self.public_ip  # means that resource block on top
      private_key = file("~/.ssh/id_rsa")
    
    }
  }
}

resource "aws_key_pair" "terraform_server"{
  key_name = "Terraform-Server-Key"
  public_key = file("~/.ssh/id_rsa.pub")
}

