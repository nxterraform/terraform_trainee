
  
variable "create_vpc" {
  description = "Controls if VPC should be created (it affects almost all resources)"
  type        = bool
}

variable "region" {
  description = "region"
  type        = string

}

variable "access_key" {
  description = "access_key"
  type        = string

}

variable "secret_key" {
  description = "secret_key"
  type        = string
}

variable "name" {
  description = "the name of your stack, e.g. \"demo\""
}


variable "cidr" {
  description = "The CIDR block for the VPC. Default value is a valid CIDR, but not acceptable by AWS and should be overridden"
  type        = string
}

variable "public_subnets" {
  description = "A list of public subnets inside the VPC"
  type        = list(string)
}

variable "private_subnets" {
  description = "A list of private subnets inside the VPC"
  type        = list(string)
}


variable "azs" {
  description = "A list of availability zones names or ids in the region"
  type        = list(string)
}

variable "enable_dns_hostnames" {
  description = "Should be true to enable DNS hostnames in the VPC"
  type        = bool
}

variable "enable_dns_support" {
  description = "Should be true to enable DNS support in the VPC"
  type        = bool
}

variable "map_public_ip_on_launch" {
  description = "Should be false if you do not want to auto-assign public IP on launch"
  type        = bool
}

variable "vpc_tags" {
  description = "Map of `VPC` to create."
  type        = any
  default     = {
    name = "paya.test"
  }
}

variable "tags" {
  description = "Map of `VPC` to create."
  type        = any
  default     = {
    name = "paya.test"
  }
}

variable "private_sub_tags" {
  description = "Map of `private Subnets` to create."
  type        = any
  default     = {
    name = "paya.test"
    }
}

variable "public_sub_tags" {
  description = "Map of `public Subnets` to create."
  type        = any
  default     = {
    name = "paya.test"
  }
}