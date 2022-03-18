provider "aws" {
  region = var.region
}

module "alarms" {
  source = "../../modules/ar/rds-cluster-recommended-alarms"

  for_each = var.cluster_ids_list

  cluster_id = each.key
  sns_topic_arn = var.sns_topic_arn
}

