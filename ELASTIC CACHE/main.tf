resource "aws_elasticache_cluster" "elasticache" {
  //  Required parameters
  engine                       = var.engine
  cluster_id                   =  "${var.engine}-${var.cluster_id}"
  security_group_ids           = var.security_group_ids
  

  num_cache_nodes              = var.num_cache_nodes
  node_type                    = var.node_type
 
  apply_immediately            = var.apply_immediately
  engine_version               = var.engine_version
  port                         = var.port
  
  availability_zone    = var.availability_zone
  maintenance_window   = var.maintenance_window
}

resource "aws_elasticache_replication_group" "example" {
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


