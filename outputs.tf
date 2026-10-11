output "storagegateway_file_system_associations_id" {
  description = "Map of id values across all storagegateway_file_system_associations, keyed the same as var.storagegateway_file_system_associations"
  value       = { for k, v in aws_storagegateway_file_system_association.storagegateway_file_system_associations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "storagegateway_file_system_associations_arn" {
  description = "Map of arn values across all storagegateway_file_system_associations, keyed the same as var.storagegateway_file_system_associations"
  value       = { for k, v in aws_storagegateway_file_system_association.storagegateway_file_system_associations : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "storagegateway_file_system_associations_audit_destination_arn" {
  description = "Map of audit_destination_arn values across all storagegateway_file_system_associations, keyed the same as var.storagegateway_file_system_associations"
  value       = { for k, v in aws_storagegateway_file_system_association.storagegateway_file_system_associations : k => v.audit_destination_arn if v.audit_destination_arn != null && length(v.audit_destination_arn) > 0 }
}
output "storagegateway_file_system_associations_cache_attributes" {
  description = "Map of cache_attributes values across all storagegateway_file_system_associations, keyed the same as var.storagegateway_file_system_associations"
  value       = { for k, v in aws_storagegateway_file_system_association.storagegateway_file_system_associations : k => one(v.cache_attributes) if v.cache_attributes != null && length(v.cache_attributes) > 0 }
}
output "storagegateway_file_system_associations_gateway_arn" {
  description = "Map of gateway_arn values across all storagegateway_file_system_associations, keyed the same as var.storagegateway_file_system_associations"
  value       = { for k, v in aws_storagegateway_file_system_association.storagegateway_file_system_associations : k => v.gateway_arn if v.gateway_arn != null && length(v.gateway_arn) > 0 }
}
output "storagegateway_file_system_associations_location_arn" {
  description = "Map of location_arn values across all storagegateway_file_system_associations, keyed the same as var.storagegateway_file_system_associations"
  value       = { for k, v in aws_storagegateway_file_system_association.storagegateway_file_system_associations : k => v.location_arn if v.location_arn != null && length(v.location_arn) > 0 }
}
output "storagegateway_file_system_associations_password" {
  description = "Map of password values across all storagegateway_file_system_associations, keyed the same as var.storagegateway_file_system_associations"
  value       = { for k, v in aws_storagegateway_file_system_association.storagegateway_file_system_associations : k => v.password if v.password != null && length(v.password) > 0 }
  sensitive   = true
}
output "storagegateway_file_system_associations_region" {
  description = "Map of region values across all storagegateway_file_system_associations, keyed the same as var.storagegateway_file_system_associations"
  value       = { for k, v in aws_storagegateway_file_system_association.storagegateway_file_system_associations : k => v.region if v.region != null && length(v.region) > 0 }
}
output "storagegateway_file_system_associations_tags" {
  description = "Map of tags values across all storagegateway_file_system_associations, keyed the same as var.storagegateway_file_system_associations"
  value       = { for k, v in aws_storagegateway_file_system_association.storagegateway_file_system_associations : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "storagegateway_file_system_associations_tags_all" {
  description = "Map of tags_all values across all storagegateway_file_system_associations, keyed the same as var.storagegateway_file_system_associations"
  value       = { for k, v in aws_storagegateway_file_system_association.storagegateway_file_system_associations : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "storagegateway_file_system_associations_username" {
  description = "Map of username values across all storagegateway_file_system_associations, keyed the same as var.storagegateway_file_system_associations"
  value       = { for k, v in aws_storagegateway_file_system_association.storagegateway_file_system_associations : k => v.username if v.username != null && length(v.username) > 0 }
}

