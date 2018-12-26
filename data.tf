data "aws_route53_zone" "dns_host" {
  name = "${var.host_domain}"
  private_zone = false
}
data "aws_instance" "this" {
  # tags {
  #   Name = "${var.instance_name_tag}"
  # }
  filter {
    name   = "tag:Name"
    values = ["${var.instance_tag_name}"]
  }
}

locals {
  host_zone_id = "${data.aws_route53_zone.dns_host.zone_id}"
  public_ip = "${data.aws_instance.this.public_ip}"
}
