provider "aws" {
  region = var.region
}

module "alarms" {
  source = "../../modules/ar/ec2-instance-recommended-alarms"

  for_each = var.instance_ids_list

  instance_id = each.key
  sns_topic_arn = var.sns_topic_arn
}

