variable "cluster_ids_list" {
    description = "RDS Cluster IDs List"
    type        = set(string)
}

variable "sns_topic_arn" {
    description = "SNS Topic ARN"
}