resource "aws_cloudfront_distribution" "s3_distribution" {
  origin {
    domain_name = aws_s3_bucket.dj_bucket.bucket_regional_domain_name
    origin_id   = "djbucket0203_origin"
  }

  enabled             = true
  is_ipv6_enabled     = true
  comment             = "djcdn"
  default_root_object = "index.html"

  logging_config {
    include_cookies = false
    bucket          = "${var.BUCKET_NAME}.s3.amazonaws.com"
    prefix          = "cloudfront_logs"
  }

  default_cache_behavior {
    allowed_methods  = ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
    cached_methods   = ["GET", "HEAD"]
    target_origin_id = "djbucket0203_origin"

    forwarded_values {
      query_string = false

      cookies {
        forward = "none"
      }
    }

    viewer_protocol_policy = "allow-all"
    min_ttl                = 0
    default_ttl            = 3600
    max_ttl                = 86400
  }

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  viewer_certificate {
    cloudfront_default_certificate = true
  }

}

