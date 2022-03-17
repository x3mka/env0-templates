output "cpu_utilization_alarm" {
    value = aws_cloudwatch_metric_alarm.cpu_utilization.arn
}

output "status_check_failed_alarm" {
    value = aws_cloudwatch_metric_alarm.status_check_failed.arn
}