provider "aws" {
    region = "us-east-1"
}

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
    InstanceID = var.instance_id
  }

  alarm_description = "This metric monitors ec2 cpu utilization"
  alarm_actions     = [var.sns_topic_arn]
}


output "cpu_utilization_alarm" {
    value = aws_cloudwatch_metric_alarm.cpu_utilization.arn
}