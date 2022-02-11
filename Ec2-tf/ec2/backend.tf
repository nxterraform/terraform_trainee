terraform {
    backend "s3" {
        bucket = "test/bucket"
        key    = "terraform.tfstate"
        region = "us-east-2"
    }
}
