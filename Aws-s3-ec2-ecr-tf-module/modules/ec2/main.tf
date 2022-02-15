resource "aws_instance" "elite" {

    ami                   = var.ami
    instance_type         = var.instance_type

    subnet_id             = var.subnet_id
    security_groups       = var.security_groups

    availability_zone     = var.availability_zone
   
    tags = var.tags
}

