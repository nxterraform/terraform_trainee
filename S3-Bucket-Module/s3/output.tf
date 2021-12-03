output "id" {
    value = aws_s3_bucket.b.id
}


output "region" {
    value = aws_s3_bucket.b.region
}

output "hosted_zone_id"{
 value= aws_s3_bucket.b.hosted_zone_id.id

}

