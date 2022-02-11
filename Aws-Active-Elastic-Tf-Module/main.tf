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

  engine                        = var.engine
  cluster_id                    =  "${var.engine}-${var.cluster_id}"
  
  security_group_ids            = var.security_group_ids
  num_cache_nodes               = var.num_cache_nodes
  node_type                     = var.node_type
  apply_immediately             = var.apply_immediately
  engine_version                = "6.x"
  port                          = var.port
  availability_zone             = var.availability_zone
  maintenance_window            = var.maintenance_window 
  
  replication_group_id          = var.replication_group_id
  parameter_group_name          = var.parameter_group_name
  replication_group_description = var.replication_group_description
  num_node_groups               = var.num_node_groups
  cluster_enabled               = var.cluster_enabled
  
  depends_on                    = [module.mq]
 }