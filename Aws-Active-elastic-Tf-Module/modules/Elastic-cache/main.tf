resource "aws_elasticache_replication_group" "elite" {
  engine = "redis"

  parameter_group_name          = var.parameter_group_name
  security_group_ids            = var.security_group_ids
  number_cache_clusters         = var.cluster_mode_enabled ? null : var.number_cache_clusters
  node_type                     = var.node_type
  automatic_failover_enabled    = "true"
  replication_group_id          = var.replication_group_id
  replication_group_description = var.replication_group_description
  engine_version                = "6.x"
  port                          = var.port

  dynamic "cluster_mode" {
    for_each                  = var.cluster_mode_enabled ? [1] : []
    content {
      replicas_per_node_group = var.replicas_per_node_group
      num_node_groups         = var.num_node_groups
    }
  }
}