resource "aws_instance" "instance" {
  ami                     = var.ami_id
  #for_each                = var.tags
  vpc_security_group_ids  = [aws_security_group.allow_tls.id]
  #count = 11
  #count = length(var.tags)
  instance_type  = "t2.micro"

  tags = {
    Name = "Hello provisioners"
   }

# provisioner "local-exec" {
#     command = "echo The server's IP address is ${self.private_ip}"
#   }

    connection {
    type     = "ssh"
    user     = "centos"
    password = "DevOps321"
    host     = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "echo connected to remote server",
      "sudo yum install nginx -y",
      "sudo systemctl start nginx",
    ]
  }
}