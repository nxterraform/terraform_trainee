
output "elasticache_replication_group_member_clusters" {
  value       = aws_elasticache_replication_group.elite.member_clusters
  description = "The identifiers of all the nodes that are part of this replication group."
}

output "security_group_ids" {
  value       = aws_elasticache_replication_group.elite.security_group_ids
  description = "The ID of the Redis ElastiCache security group."
}


