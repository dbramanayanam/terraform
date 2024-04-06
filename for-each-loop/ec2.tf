resource "aws_instance" "instance" {
  ami                     = var.ami_id
  for_each                = var.tags
  vpc_security_group_ids  = [aws_security_group.allow_tls.id]
  #count = 11
  #count = length(var.tags)
  instance_type  = each.value
  tags = {
    Name = each.key
   }
}