output "cf_domain_name" {
description = "Domain name corresponding to the distribution"
value = aws_cloudfront_distribution.this.domain_name
}

output "cf_arn" {
description = "ARN of AWS CloudFront distribution"
value = aws_cloudfront_distribution.this.arn
}

output "cf_aliases" {
description = "Extra CNAMEs of AWS CloudFront"
value = var.aliases
}
