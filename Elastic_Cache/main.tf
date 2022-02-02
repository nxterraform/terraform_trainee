
locals {
  aws_elasticache_cluster = var.parameter_group_name!="default.redis6.x"? var.parameter_group_name : "INSTANCE"
}

resource "aws_elasticache_cluster" "example" {
  cluster_id           = var.cluster_id
  engine               = var.engine
  node_type            = "cache.r6g.large"
  num_cache_nodes      = 1
  parameter_group_name = var.parameter_group_name
  engine_version       = var.engine_version
  port                 = 6379
}

resource "aws_elasticache_replication_group" "Enable" {
  replication_group_id          = var.replication_group_id
  replication_group_description = "test description"
  node_type                     = "cache.t2.small"
  port                          = 6379
  parameter_group_name          = var.parameter_group_name
  automatic_failover_enabled    = true

  cluster_mode {
    replicas_per_node_group = 1
    num_node_groups         = 2
  }
}
