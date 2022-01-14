
  
variable "username" {
  type    =     list
  default = [""]
}

variable "region" {
  default = "us-east-1"
}

variable "access_key" {
    type = string
    default = ""
}

variable "secret_key" {
  type = string
  default = ""
}

variable "name" {
  type = string
  default = "s3_bucket"
}

