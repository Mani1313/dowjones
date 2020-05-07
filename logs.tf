# Set up CloudWatch group and log stream and retain logs for 30 days
resource "aws_cloudwatch_log_group" "dj_log_group" {
  name              = "/ecs/dj-app"
  retention_in_days = 30

  tags = {
    Name = "dj-log-group"
  }
}

resource "aws_cloudwatch_log_stream" "dj_log_stream" {
  name           = "dj-log-stream"
  log_group_name = aws_cloudwatch_log_group.dj_log_group.name
}
