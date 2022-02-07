variable "common_tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map(any)
  default = {
    name = "elite"
  }
}

variable "subnet_ids" {
  description = "Contains subnet ids"
  type        = list(any)
  default     = ["subnet-dd52a0b6"]

}

variable "audit" {
  description = "To enable audit logging"
  type        = bool
  default     = "false"
}

variable "maintenance_window_start_time" {
  description = "Describe the Maintenance window block"
  type        = map(any)
  default = {
    day_of_week = "MONDAY"
    time_of_day = "12:05"
    time_zone   = "GMT"
  }
}


variable "username" {
  type        = string
  description = "elite-@test"
  default     = "ExampleUser"
}

variable "password" {
  type        = string
  description = "mq#1234"
  sensitive   = true
}

variable "engine_type" {
  type        = string
  default     = "RabbitMQ"
  description = "Type of broker engine. Valid values are ActiveMQ and RabbitMQ."
}

variable "engine_version" {
  type        = string
  default     = "3.8.26"
  description = "Version of the broker engine. See the AmazonMQ Broker Engine docs for supported versions. For example, 5.15.0"
}

variable "host_instance_type" {
  type        = string
  default     = "mq.m5.large"
  description = "Broker's instance type. For example, mq.t3.micro, mq.m5.large"
}

variable "deployment_mode" {
  type        = string
  default     = ""
  description = "Deployment mode of the broker. Valid values are SINGLE_INSTANCE, ACTIVE_STANDBY_MULTI_AZ, and CLUSTER_MULTI_AZ. Default is SINGLE_INSTANCE."
}

variable "publicly_accessible" {
  type        = string
  default     = "false"
  description = " Whether to enable connections from applications outside of the VPC that hosts the broker's subnets."
}

variable "access_key" {
  type    = string
  default = ""
}

variable "secret_key" {
  type    = string
  default = ""
}

variable "region" {
  type    = string
  default = "us-east-2"
}

variable "broker_name" {
  type        = string
  default     = "elite-test-id1"
  description = "Name of the broker."
}

variable "storage_type" {
  type        = string
  description = "(optional) Storage type of the broker, only ebs work with mq.m5.large"
  default     = null
}

variable "replication_group_id" {
  type        = string
  default  = "redis1"
  description = "The replication group identifier. This parameter is stored as a lowercase string."
}

variable "cluster_id" {
  description = "cluster_id of cluster"
  type = string
  default = "demo"
}


variable "num_cache_nodes" {
  default     = "1"
  type        = string
  description = "Cache Node count"
}

variable "node_type" {
  type        = string
  default  = "cache.t2.micro"
  description = "The compute and memory capacity of the nodes in the node group."
}

variable "security_group_ids" {
  type        = list(string)
  description = "List of Security Groups."
  default     = []
}

variable "replication_group_description" {
  default     = "test description"
  type        = string
  description = "The description of the all resources."
}

variable "maintenance_window" {
  type = string
  description = "describe your variable"
  default = "sun:05:00-sun:06:00"
}

variable "port" {
  default     = 6379
  type        = number
  description = "The port number on which each of the cache nodes will accept connections."
}

variable "parameter_group_name" {
  type = string
  default     = "default.redis6.x.cluster.on"
  description = "A list of Redis parameters to apply. Note that parameters may differ from one Redis family to another"
}

variable "apply_immediately" {
  type = string
  description = "apply immediately default set to false"
  default = "false"
}

variable "availability_zone" {
  type = string
  description = "availability_zone"
  default = ""
}

variable "engine" {
  default = "redis"
  type = string
  description = "Engine for elasticache"
}

variable "num_node_groups" {
  default = "1"
  type    = string
  description = "Number of Shards (nodes)."
  
}