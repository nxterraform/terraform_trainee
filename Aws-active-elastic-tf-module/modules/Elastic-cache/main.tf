resource "aws_elasticache_cluster" "elasticache" {
  count                        = "${var.cluster_enabled == true ? 1 : 0}"
  
  //  Required parameters
  engine                       = var.engine
  cluster_id                   = "${var.engine}-${var.environment}"
  
  security_group_ids           = var.security_group_ids
  

  num_cache_nodes              = var.num_cache_nodes
  node_type                    = var.node_type
 
  apply_immediately            = var.apply_immediately
  engine_version               = "6.x"
  port                         = var.port
  
  maintenance_window   = var.maintenance_window

}

resource "aws_elasticache_replication_group" "replication" {
  count                         = "${var.cluster_enabled == false ? 1 : 0}"
 
  automatic_failover_enabled    = true
  replication_group_id          = var.replication_group_id
  replication_group_description = var.replication_group_description
  node_type                     = var.node_type
  
  parameter_group_name          = var.parameter_group_name
  port                          = var.port

  cluster_mode {
    replicas_per_node_group = 1
    num_node_groups         = var.num_node_groups
  }
}
