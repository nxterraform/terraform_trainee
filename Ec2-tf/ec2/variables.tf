variable "ami" {
    type        = string
    description = "AMI to use for the instance"
    default     = ""
}

variable "instance_type" {
    type        =  string
    description = "The instance type to use for the instance. Updates to this field will trigger a stop/start of the EC2 instance."
    default     = ""
}

variable "availability_zone" {
    type        = string
    description = "AZ to start the instance in"
    default     = ""
}

variable "tags" {
    type        = map(string)
    description = "tag-name"
    default     = {
        env     = "elitepro"
    }
}

variable "subnet_id" {
    type = string
    description = " VPC Subnet ID to launch in."
    default =  ""
}

variable "security_groups" {
    type = list(string)
    description = "A list of security group IDs to associate with."
    default = null
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
