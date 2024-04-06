resource "aws_instance" "instance"{
  ami                     = var.ami_id
  instance_type           = var.instance_type == "Web" ? "t3.small" : "t2.micro"
  vpc_security_group_ids  = [aws_security_group.allow_tls.id]
  tags = var.tags
}

