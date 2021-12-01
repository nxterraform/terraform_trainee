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


variable "tags" {
    type        = map
    description = "A mapping of tags to assign to the bucket."
    default     = {
        environment = "prod"
        terraform   = "true"
    }
}
 variable "access_key" {
    default = ""
}

variable "secret_key" {
    default  =""
}

variable "region" {
    type = string
    default = ""
}
