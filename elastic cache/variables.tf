variable "replication_group_id" {
  type        = string
  default  = "redis1"
  description = "The replication group identifier. This parameter is stored as a lowercase string."
}

variable "number_cache_clusters" {
  type        = number
  description = "The number of cache clusters (primary and replicas) this replication group will have."
}

variable "node_type" {
  type        = string
  default  = "cache.r6g.large"
  description = "The compute and memory capacity of the nodes in the node group."
}

variable "security_group_ids" {
  type        = list(string)
  description = "List of Security Groups."
  default     = []
}

variable "replication_group_description" {
  default     = "Managed by Terraform"
  type        = string
  description = "The description of the all resources."
}

variable "engine_version" {
  default     = "6.x"
  type        = string
  description = "The version number of the cache engine to be used for the cache clusters in this replication group."
}

variable "port" {
  default     = 6379
  type        = number
  description = "The port number on which each of the cache nodes will accept connections."
}

variable "cluster_mode_enabled" {
  type        = bool
  description = "Enable creation of a native redis cluster."
  default     = false
}

variable "replicas_per_node_group" {
  type        = number
  default     = 0
  description = "Required when `cluster_mode_enabled` is set to true. Specify the number of replica nodes in each node group. Valid values are 0 to 5. Changing this number will force a new resource."
}

variable "num_node_groups" {
  type        = number
  default     = 0
  description = "Required when `cluster_mode_enabled` is set to true. Specify the number of node groups (shards) for this Redis replication group. Changing this number will trigger an online resizing operation before other settings modifications."
}

variable "parameter_group_name" {
  type = string
  default     = "default.redis6.x.cluster.on"
  description = "A list of Redis parameters to apply. Note that parameters may differ from one Redis family to another"
}


variable "region" {
  default = ""
}

variable "access_key" {
    type = string
    default = ""
}

variable "secret_key" {
  type = string
  default = ""
}
