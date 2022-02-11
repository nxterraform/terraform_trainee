terraform {
    backend "s3" {
        bucket = "vault"
        key    = ""
        region = "us-east-2"
    }
}