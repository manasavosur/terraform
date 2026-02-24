resource "aws_route53_record" "private" {
  for_each = aws_instance.example
  zone_id = var.zone_id
  # interpolation
  name    = "${each.key}.${var.domain_name}" # mongodb.chotu.online
  type    = "A"
  ttl     = 1
  records = [each.value.private_ip]
  allow_overwrite = true
}

#record to get the public id for frontend

resource "aws_route53_record" "frontend_public" {
  zone_id = var.zone_id
  # interpolation
  name    = "roboshop.${var.domain_name}" # roboshop.chotu.online
  type    = "A"
  ttl     = 1
  records = [lookup(aws_instance.example, "mongodb").public_ip]
  allow_overwrite = true
}


#we can use this that helps skip if frontend is not there in list/map 
# resource "aws_route53_record" "frontend_public" {
#   for_each = {
#     for k, v in aws_instance.example : k => v
#     if k == "frontend"
#   }

#   zone_id = var.zone_id
#   name    = "roboshop.${var.domain_name}"
#   type    = "A"
#   ttl     = 1
#   records = [each.value.public_ip]
# }