#create ec2
module "ec2_instance" {
    source                  = "./modules/ec2"
    ami                     = "ami-0d718c3d715cec4a7"

    instance_type           = "t2.micro"
    subnet_id               = ""
    availability_zone       = "us-east-2a"
    security_groups         = var.security_groups
    tags                    = var.tags
}



#create s3_bucket
module "s3" {
    source               = "./modules/s3"
    bucket_name          = "elitemax"
    s3_tags              = var.s3_tags
    depends_on           = [module.ec2_instance]
}


#create ecr
module "ecr" {
    source                = "./modules/ecr"
    ecr_repo_name         = "ecr-repo"
    scan_on_push          = "true"
    image_tag_mutability  = "MUTABLE"
    depends_on            = [module.s3]
}