

variable "ecr_name" {
type = list(string)
description = "Name of the repository."
default = []
}

variable "create" {
  description = "Controls if Ecr resources should be created (affects nearly all resources)"
  type        = bool
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