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
  default =["subnet-dd52a0b89"]

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
  description = ""
  default     = "ExampleUser"
}

variable "password" {
  type        = string
  description = ""
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
  default     = "false"
  description = " Whether to enable connections from applications outside of the VPC that hosts the broker's subnets."
}

variable "access_key" {
    type = string
    default = ""
}

variable "secret_key" {
  type = string
  default = ""
}

variable "region" {
  type = string
  default = ""
}

variable "broker_name" {
  type = string
  default = ""
  description = "Name of the broker."
}

variable "storage_type" {
  type        = string
  description = "(optional) Storage type of the broker, only ebs work with mq.m5.large"
  default     = null
}
