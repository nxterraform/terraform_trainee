locals {
  deployment_mode = var.deployment_mode != "" ? var.deployment_mode : "CLUSTER_MULTI_AZ"
}


resource "aws_mq_broker" "broker" {
  broker_name = var.broker_name

  storage_type        = var.storage_type
  engine_type         = var.engine_type
  engine_version      = var.engine_version
  host_instance_type  = var.host_instance_type
  deployment_mode     = local.deployment_mode
  publicly_accessible = var.publicly_accessible
  

  user {
    username = var.username
    password = random_password.password.result
  }

  maintenance_window_start_time {
    day_of_week = var.maintenance_window_start_time["day_of_week"]
    time_of_day = var.maintenance_window_start_time["time_of_day"]
    time_zone   = var.maintenance_window_start_time["time_zone"]
  }

 
  logs {
    general = true
    audit   = var.audit
  }

  subnet_ids = var.subnet_ids
  tags       = var.common_tags
}

resource "random_password" "password" {
  length           = 16
  special          = true
  override_special = "_%@"
}