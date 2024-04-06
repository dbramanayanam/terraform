resource "aws_route53_record" "www" {
  #count = 11
  for_each = resource.aws_instance.instance
  #count = length(var.tags)
  zone_id = var.zone_id
  name    = "${each.key}.dineshdevops.online"
  type    = "A"
  ttl     = 1
  records = [ each.key == "web" ? each.value.public_ip : each.value.private_ip ]
}