output "alb_hostname" {
  value = aws_alb.main.dns_name
}
output "cf_domainname" {
  value = aws_cloudfront_distribution.s3_distribution.domain_name
}
output "dj_bucket" {
  value = aws_s3_bucket.dj_bucket.bucket_domain_name
}
output "alb_targetgroup" {
  value = aws_alb_target_group.app.name
}
output "alb_securitygroup" {
  value = aws_security_group.lb.name
}
output "ecs_tasks_securitygroup" {
  value = aws_security_group.ecs_tasks.name
}
