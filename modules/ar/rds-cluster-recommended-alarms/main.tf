resource "aws_cloudwatch_metric_alarm" "database_connections" {
  alarm_name          = "RDS: Database Connections - ${var.cluster_id}"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "2"
  metric_name         = "DatabaseConnections"
  namespace           = "AWS/RDS"
  period              = "120"
  statistic           = "Average"
  threshold           = "100"

  dimensions = {
    DBClusterIdentifier = var.cluster_id
  }

  alarm_description = "This alarm monitors RDS DatabaseConnections metric"
  alarm_actions     = [var.sns_topic_arn]
}

resource "aws_cloudwatch_metric_alarm" "cpu_utilization" {
  alarm_name          = "RDS: CPU Utilization - ${var.cluster_id}"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "2"
  metric_name         = "CPUUtilization"
  namespace           = "AWS/RDS"
  period              = "120"
  statistic           = "Average"
  threshold           = "80"

  dimensions = {
    DBClusterIdentifier = var.cluster_id
  }

  alarm_description = "This alarm monitors RDS CPUUtilization metric"
  alarm_actions     = [var.sns_topic_arn]
}

resource "aws_cloudwatch_metric_alarm" "freeable_memory" {
  alarm_name          = "RDS: Freeable Memory - ${var.cluster_id}"
  comparison_operator = "LessThanOrEqualToThreshold"
  evaluation_periods  = "2"
  metric_name         = "FreeableMemory"
  namespace           = "AWS/RDS"
  period              = "120"
  statistic           = "Average"
  threshold           = "1000000"

  dimensions = {
    DBClusterIdentifier = var.cluster_id
  }

  alarm_description = "This alarm monitors RDS FreeableMemory metric"
  alarm_actions     = [var.sns_topic_arn]
}

