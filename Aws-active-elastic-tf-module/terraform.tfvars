#Global-variables
region                        = "ap-southeast-1"
access_key                    = ""
secret_key                    = ""
security_groups               = ["sg-2a3d244c78"]
cluster_enabled               = true

#MQ
mq_module_enabled     = true

broker_name           = "elite-test-id"
engine_type           = "RabbitMQ"
engine_version        = "3.8.26"
host_instance_type    = "mq.m5.large"
username              = ""
password              = ""
audit                 = "false"
deployment_mode       = "CLUSTER_MULTI_AZ"
publicly_accessible   = "false"
subnet_ids            = ["subnet-dd52a0b67"]


#Redis
redis_module_enabled          = true

replication_group_id          = "redis1"
cluster_id                    = "test"
num_cache_nodes               = "1"
node_type                     = "cache.t2.micro"
replication_group_description = "test description"
maintenance_window            = "sun:05:00-sun:06:00"
parameter_group_name          = "default.redis6.x.cluster.on"
engine                        = "redis"
num_node_groups               = "1"

apply_immediately             = "false"
environment                   = "demo"
