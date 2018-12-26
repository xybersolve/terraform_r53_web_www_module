# Project specific
variable "host_domain" {
  type = "string"
}

variable "record" {
  type = "string"
  default = "A"
}

variable "instance_name_tag" {
  type = "string"
}

variable "end_point" {
  type = "string"
}

variable "record_type" {
  # TXT, CNAME, A
  type = "string"
  default = "A"
}

variable "ttl" {
  type = "string"
  default = "300"
}

variable "application" {
  type = "string"
}

variable "environment" {
  type = "string"
  default = "prod"
}
variable "zone" {
  type = "string"
  default = "web"
}
