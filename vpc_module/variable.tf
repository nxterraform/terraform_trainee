variable "cidr_block"{
  description = "The IPv4 CIDR block for the VPC"
  type        = string
  default     = ""
}

variable "instance_tenancy"{
  description = "A tenancy option for instances launched into the VPC"
  type        = string
  default     = ""
}

variable "enable_dns_hostnames"{
  description = "Should be true to enable DNS hostnames in the VPC"
  type        = bool
  default     = "false"
}


variable "enable_dns_support"{
  description = "Should be true to enable DNS support in the VPC"
  type        = bool
  default     = "true"
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

variable "tags" {
  description = "Additional tags for the VPC"
  type        = map(string)
  default     = {
        name     = "elitepro"
    }
}

variable "public_subnets" {
  description = "A list of public subnets inside the VPC"
  type        = string
  default     = "10.0.0.128/26"
}

variable "private_subnets" {
  description = "A list of private subnets inside the VPC"
  type        = string
  default     = "10.0.0.192/26"
}

variable "enable_ipv6" {
  description      = "Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC."
  type             = bool
  default          = "false"
}