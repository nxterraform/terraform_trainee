variable "name" {
description = "release name"
type = string
default = ""
}

variable "repository" {
 description = "Repository URL where to locate the requested chart." 
 type = URL
 default = ""
 }

 variable "chart" {
 description = "Chart name to be installed" 
 type = string
 default = ""
 }

 variable "namespace" {
 description = "The namespace to install the release into." 
 type = string
 default = ""
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

