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

variable "engine_version" {
  default     = "6.x"
  type        = string
  description = "The version number of the cache engine to be used for the cache clusters in this replication group."
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

variable "region" {
  default = "us-east-2"
}

variable "access_key" {
    type = string
    default = ""
}

variable "secret_key" {
  type = string
  default = ""
}
