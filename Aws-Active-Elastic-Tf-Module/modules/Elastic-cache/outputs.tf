output "security_group_ids" {
  value       = "aws_elasticache_cluster.elasticache.security_group_ids"
  description = "The ID of the Redis ElastiCache security group."
}

output "cluster_enabled" {
  value = join("", aws_elasticache_replication_group.example.*.cluster_enabled)  
  description = "indicates if the cluster is enabled"
}