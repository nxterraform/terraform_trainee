variable "region" {
  default = "ap-south-1"
}

variable "access_key" {
    type = string
    default = ""
}

variable "secret_key" {
  type = string
  default = ""
}
variable "replication_group_id" {
  default = "tf-rep-group-1"
}
variable "parameter_group_name" {
  default = "default.redis6.x.cluster.on"
  
}
variable "engine" {
  default = "redis"
}

variable "engine_version" {
  type        = string
  default     = ""
  description = "Version of the broker engine. See the AmazonMQ Broker Engine docs for supported versions. For example, 5.15.0"
}
variable "cluster_id" {
  default = "instance-example"
}