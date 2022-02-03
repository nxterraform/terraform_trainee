#create active-mq
module "mq" {
  source  = "./modules/Active-Mq"

  broker_name                   = var.broker_name
  engine_type                   = var.engine_type
  engine_version                = var.engine_version
  host_instance_type            = var.host_instance_type
  username                      = var.username
  password                      = var.password
  subnet_ids                    = var.subnet_ids
  common_tags                   = var.common_tags 
  deployment_mode               = var.deployment_mode
  publicly_accessible           = var.publicly_accessible
  storage_type                  = var.storage_type
  maintenance_window_start_time = var.maintenance_window_start_time
  audit                         = var.audit
}


#create redis-elastic
module "redis" {
 source  = "./modules/Elastic-cache"

    replication_group_id          = var.replication_group_id
    parameter_group_name          = var.parameter_group_name
    number_cache_clusters         = var.number_cache_clusters
    node_type                     = var.node_type 
    security_group_ids            = var.security_group_ids
    replication_group_description = var.replication_group_description
    port                          = var.port
    cluster_mode_enabled          = var.cluster_mode_enabled
    replicas_per_node_group       = var.replicas_per_node_group
    num_node_groups               = var.num_node_groups  
 }