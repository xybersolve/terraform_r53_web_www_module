# Project specific

variable "host_domain" {
  type = "string"
}

variable "record" {
  type = "string"
}

variable "record_type" {
  # TXT, CNAME, A
  default = "A"
  type = "string"
}

variable "ttl" {
  type = "string"
  default = "900"
}

variable "application" {
  type = "string"
}

variable "environment" {
  type = "string"
}
variable "zone" {
  type = "string"
}
