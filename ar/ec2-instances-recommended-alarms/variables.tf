variable "region" {
    description = "Region"
    default = "us-east-1"
}

variable "instance_ids_list" {
    description = "EC2 Instance IDs List"
    type        = set(string)
}

variable "sns_topic_arn" {
    description = "SNS Topic ARN"
}