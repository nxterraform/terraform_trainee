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

variable "cluster_enabled" {
  type   = bool
  description = "It will set cluster value to TRUE or FALSE"
}



#----------------------------------------MQ-------------------------------------------



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
  default     = []

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
  description = "username for mq"
  default     = ""
}

variable "password" {
  type        = string
  description = "password for the mq"
  sensitive   = true
}

variable "engine_type" {
  type        = string
  default     = ""
  description = "Type of broker engine. Valid values are ActiveMQ and RabbitMQ."
}

variable "engine_version" {
  type        = string
  default     = ""
  description = "Version of the broker engine. See the AmazonMQ Broker Engine docs for supported versions. For example, 5.15.0"
}

variable "host_instance_type" {
  type        = string
  default     = ""
  description = "Broker's instance type. For example, mq.t3.micro, mq.m5.large"
}

variable "deployment_mode" {
  type        = string
  default     = ""
  description = "Deployment mode of the broker. Valid values are SINGLE_INSTANCE, ACTIVE_STANDBY_MULTI_AZ, and CLUSTER_MULTI_AZ. Default is SINGLE_INSTANCE."
}

variable "publicly_accessible" {
  type        = string
  default     = ""
  description = " Whether to enable connections from applications outside of the VPC that hosts the broker's subnets."
}


variable "broker_name" {
  type        = string
  default     = ""
  description = "Name of the broker."
}

variable "storage_type" {
  type        = string
  description = "(optional) Storage type of the broker, only ebs work with mq.m5.large"
  default     = null
}

variable "security_groups" {
  type      = list(string)
  description = "list of security_groups"
  default     =  []
}

variable "mq_module_enabled" {
  type = bool
  description = "It will set the value to TRUE or FALSE while running the module"
}

#----------------------------------REDIS------------------------------------


variable "replication_group_id" {
  type        = string
  default  = ""
  description = "The replication group identifier. This parameter is stored as a lowercase string."
}

variable "cluster_id" {
  description = "cluster_id of cluster"
  type = string
  default = ""
}


variable "num_cache_nodes" {
  default     = ""
  type        = string
  description = "Cache Node count"
}

variable "node_type" {
  type        = string
  default  = ""
  description = "The compute and memory capacity of the nodes in the node group."
}

variable "security_group_ids" {
  type        = list(string)
  description = "List of Security Groups."
  default     = []
}

variable "replication_group_description" {
  default     = ""
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
  default     = ""
  description = "A list of Redis parameters to apply. Note that parameters may differ from one Redis family to another"
}

variable "apply_immediately" {
  type = string
  description = "apply immediately default set to false"
  default = ""
}

variable "engine" {
  default = ""
  type = string
  description = "Engine for elasticache"
}

variable "num_node_groups" {
  default = ""
  type    = string
  description = "Number of Shards (nodes)."
}

variable "environment" {
  type        = string
  description = "Name of Environment this redis is meant to house"
  default = ""
}

variable "redis_module_enabled" {
  type = bool
  description = "It will set the value to TRUE or FALSE while running the module"
}
