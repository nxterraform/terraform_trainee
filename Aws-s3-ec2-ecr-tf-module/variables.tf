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
    description   = "AWS SECRET_KEY"
    default       = ""
}

variable "region" {
    description   = "AWS region to launch servers."
    default       = "us-east-2"
}

variable "bucket_name" {
    type        = string
    description = "Creates a unique bucket name beginning with the specified prefix. Conflicts with bucket."
    default     = " "
}
    
variable "acl" {
    type        = string
    description = "The canned ACL to apply. Defaults to private. Conflicts with grant."
    default     = "private"
}


variable "s3_tags" {
    type        = map(string)
    description = "A mapping of tags to assign to the bucket."
    default     = {
        tech    = "promaxelite"
    }
}

variable "ecr_repo_name" {
type = string
description = "Name of the repository."
default = ""
}

variable "image_tag_mutability" {
type = string
description = "The tag mutability setting for the repository."
default = ""
}

#image_scanning_configuration
variable "scan_on_push" {
type = bool
description = "Indicates whether images are scanned after being pushed to the repository (true) or not scanned (false)."
default = "true"
}
