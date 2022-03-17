variable "instance_id" {
    description = "EC2 Instance ID"
    default     = "i-0d05d08cbf8cb3ca2"
}

variable "sns_topic_arn" {
    description = "SNS Topic ARN"
    default     = "arn:aws:sns:us-east-1:552254306343:DEV-cloudnexa-MONITORING"
}