#MQ
broker_name           = "elite-test-id"
engine_type           = "RabbitMQ"
engine_version        = "3.8.26"
host_instance_type    = "mq.m5.large"
username              = ""
password              = ""
audit                 = "false"

#redis
replication_group_id          = "redis1"
cluster_id                    = "test"
num_cache_nodes               = "1"
node_type                     = "cache.t2.micro"
replication_group_description = "test description"
maintenance_window            = "sun:05:00-sun:06:00"
parameter_group_name          = "default.redis6.x.cluster.on"
engine                        = "redis"
num_node_groups               = "1"

region                        = "us-east-2"
access_key                    = ""
secret_key                    = ""