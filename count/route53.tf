resource "aws_route53_record" "www" {
  #count = 11
  count = length(var.tags)
  zone_id = var.zone_id
  name    = "${var.tags[count.index]}.dineshdevops.online"
  type    = "A"
  ttl     = 1
  records = [var.tags[count.index] == "web" ? aws_instance.instance[count.index].public_ip : aws_instance.instance[count.index].private_ip]
}