variable "instance_ids_list" {
    description = "EC2 Instance IDs List"
    type        = set(string)
}

variable "sns_topic_arn" {
    description = "SNS Topic ARN"
}