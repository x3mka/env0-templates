

resource "aws_cloudwatch_metric_alarm" "cpu_utilization" {
  alarm_name          = "EC2: CPU Utilization - ${var.instance_id}"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "2"
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = "120"
  statistic           = "Average"
  threshold           = "80"

  dimensions = {
    InstanceId = var.instance_id
  }

  alarm_description = "This alarm monitors ec2 CPUUtilization metric"
  alarm_actions     = [var.sns_topic_arn]
}

resource "aws_cloudwatch_metric_alarm" "status_check_failed" {
  alarm_name          = "EC2: Status Check Failed - ${var.instance_id}"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "2"
  metric_name         = "StatusCheckFailed"
  namespace           = "AWS/EC2"
  period              = "120"
  statistic           = "Average"
  threshold           = "1"

  dimensions = {
    InstanceId = var.instance_id
  }

  alarm_description = "This alarm monitors ec2 instance StatusCheckFailed metric"
  alarm_actions     = [var.sns_topic_arn]
}