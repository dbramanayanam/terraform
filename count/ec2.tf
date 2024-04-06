resource "aws_instance" "instance"{
  ami                     = var.ami_id
  instance_type           = var.tags[count.index] == "mongodb" || var.tags[count.index] == "mysql" || var.tags[count.index] == "shipping" ? "t3.small" : "t2.micro"
  vpc_security_group_ids  = [aws_security_group.allow_tls.id]
  #count = 11
  count = length(var.tags)
  tags = {
    Name = var.tags[count.index]
  }
}

