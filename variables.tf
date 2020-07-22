variable "bucket_regional_domain_name" {
  type = string
}

variable "cf_access_identity_path" {
  type    = string
  default = ""
}

variable "enabled" {
  type    = bool
  default = true
}

variable "ipv6_enabled" {
  type    = bool
  default = false
}

variable "allowed_methods" {
  type    = list(string)
  default = ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
}


variable "cached_methods" {
  type    = list(string)
  default = ["GET", "HEAD"]
}

variable "viewer_protocol_policy" {
  type    = string
  default = "allow-all"
}

variable "min_ttl" {
  type    = number
  default = 0
}

variable "default_ttl" {
  type    = number
  default = 3600
}

variable "max_ttl" {
  type    = number
  default = 86400
}

variable "compress" {
  type    = bool
  default = true
}

variable "price_class" {
  type    = string
  default = "PriceClass_All"
}

variable "restrict_type" {
  type    = string
  default = "none"
}

variable "restrict_locations" {
  type    = list(string)
  default = []
}

variable "cf_default_cert" {
  type    = bool
  default = true
}

variable "acm_cert_arn" {
  type = string
}

variable "aliases" {
  type = list(string)
}

variable "ssl_method" {
  type    = string
  default = "sni-only"
}

variable "ssl_protocol_version" {
  type    = string
  default = "TLSv1.2_2019"
}

variable "environment" {
 type = string
 default = "production"
}
