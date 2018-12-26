resource "aws_route53_record" "site" {
  name    = "${var.host_domain}"
  type    = "${var.record_type}"
  zone_id = "${local.host_zone_id}"
  records = ["${var.record}"]
  ttl     = "${var.ttl}"
}

resource "aws_route53_record" "www" {
  name    = "www.${var.host_domain}"
  type    = "${var.record_type}"
  zone_id = "${local.host_zone_id}"
  records = ["${var.record}"]
  ttl     = "${var.ttl}"
}
