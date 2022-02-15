resource "aws_ecr_repository" "cicd" {
        count                   = var.create ? 3 : 0
        name  = element(var.ecr_name,count.index)
        image_tag_mutability    = var.image_tag_mutability
  
    image_scanning_configuration {
        scan_on_push            = var.scan_on_push
  }
}