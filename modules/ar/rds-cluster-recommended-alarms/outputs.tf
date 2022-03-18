output "database_connections_alarm" {
    value = aws_cloudwatch_metric_alarm.database_connections.arn
}

output "cpu_utilization_alarm" {
    value = aws_cloudwatch_metric_alarm.cpu_utilization.arn
}

output "freeable_memory_alarm" {
    value = aws_cloudwatch_metric_alarm.freeable_memory.arn
}