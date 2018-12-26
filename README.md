# r53-web-www

> Enables quick AWS Route53 routing for new websites.
Creates 2 DNS A records, one for site and another for www.site.
Expects host zone (NS records) to be already completed, i.e., AWS as registrar.
Given instance tag name, it will pull public ip and use that for record.

```sh
module "r53-web-www" {
  # source = "../../../modules/services/r53-web-www"
  source = "github.com/xybersolve/terraform_r53_web_www_module"

  host_domain = "mydomain.com"
  record_type = "A"
  ttl = "300"
  # end_point = "${var.public_dns}"
  instance_tag_name = "*instance-tag-name"

  environment = "${var.environment}"
  application = "${var.application}"
  zone = "${var.zone}"
}

```

## [License](LICENSE.md)
