terraform {
    backend "s3" {
        bucket = "svault"
        key    = "terraform.tfstate"
        region = "us-east-2"
    }
}