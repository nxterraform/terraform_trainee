

output "security_group_ids" {
  value       = aws_elasticache_cluster.elasticache.security_group_ids
  description = "The ID of the Redis ElastiCache security group."
}


