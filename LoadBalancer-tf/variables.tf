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

variable "aws_security" {
    type = string
    description = "A list of security group IDs to associate with."
    default = "security"
}

variable "subnet_id" {
    type = string
    description = " VPC Subnet ID to launch in."
    default =  ""
}
/*
variable "security_groups" {
    type = string
    description = "A list of security group IDs to associate with."
    default = "sg-05497fafa252e50ce"
}*/

variable "acl" {
    type        = string
    description = "The canned ACL to apply. Defaults to private. Conflicts with grant."
    default     = "private"
}
variable "bucket" {
    type        = string
    description = "Creates a unique bucket name beginning with the specified prefix. Conflicts with bucket."
    default     = " "
}
