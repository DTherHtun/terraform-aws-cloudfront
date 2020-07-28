resource     "aws_cloudfront_distribution" "this" {
  origin {
    domain_name = var.bucket_regional_domain_name
    origin_id   = split(".", var.bucket_regional_domain_name)[0]

    s3_origin_config {
      origin_access_identity = var.cf_access_identity_path
    }
  }

  enabled         = var.enabled
  is_ipv6_enabled = var.ipv6_enabled

  aliases = var.cf_default_cert == false ? var.aliases : []

  default_cache_behavior {
    allowed_methods  = var.allowed_methods
    cached_methods   = var.cached_methods
    target_origin_id = split(".", var.bucket_regional_domain_name)[0]

    forwarded_values {
      query_string = false

      cookies {
        forward = "none"
      }
    }

    viewer_protocol_policy = var.viewer_protocol_policy
    min_ttl                = var.min_ttl
    default_ttl            = var.default_ttl
    max_ttl                = var.max_ttl
    compress               = var.compress
  }



  price_class = var.price_class

  restrictions {
    geo_restriction {
      restriction_type = var.restrict_type
      locations        = var.restrict_locations
    }
  }

  tags = {
    Environment = var.environment
  }

  viewer_certificate {
    cloudfront_default_certificate = var.cf_default_cert == false ? false : var.cf_default_cert
    acm_certificate_arn            = var.cf_default_cert == false ? var.acm_cert_arn : ""
    ssl_support_method             = var.cf_default_cert == false ? var.ssl_method : ""
    minimum_protocol_version       = var.ssl_protocol_version
  }
}
