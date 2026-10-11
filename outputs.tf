output "namespaces_id" {
  description = "Map of id values across all namespaces, keyed the same as var.namespaces except keys with no id are omitted"
  value       = { for k, v in consul_namespace.namespaces : k => v.id if v.id != null && length(v.id) > 0 }
}
output "namespaces_description" {
  description = "Map of description values across all namespaces, keyed the same as var.namespaces except keys with no description are omitted"
  value       = { for k, v in consul_namespace.namespaces : k => v.description if v.description != null && length(v.description) > 0 }
}
output "namespaces_meta" {
  description = "Map of meta values across all namespaces, keyed the same as var.namespaces except keys with no meta are omitted"
  value       = { for k, v in consul_namespace.namespaces : k => v.meta if v.meta != null && length(v.meta) > 0 }
}
output "namespaces_name" {
  description = "Map of name values across all namespaces, keyed the same as var.namespaces except keys with no name are omitted"
  value       = { for k, v in consul_namespace.namespaces : k => v.name if v.name != null && length(v.name) > 0 }
}
output "namespaces_partition" {
  description = "Map of partition values across all namespaces, keyed the same as var.namespaces except keys with no partition are omitted"
  value       = { for k, v in consul_namespace.namespaces : k => v.partition if v.partition != null && length(v.partition) > 0 }
}
output "namespaces_policy_defaults" {
  description = "Map of policy_defaults values across all namespaces, keyed the same as var.namespaces except keys with no policy_defaults are omitted"
  value       = { for k, v in consul_namespace.namespaces : k => v.policy_defaults if v.policy_defaults != null && length(v.policy_defaults) > 0 }
}
output "namespaces_role_defaults" {
  description = "Map of role_defaults values across all namespaces, keyed the same as var.namespaces except keys with no role_defaults are omitted"
  value       = { for k, v in consul_namespace.namespaces : k => v.role_defaults if v.role_defaults != null && length(v.role_defaults) > 0 }
}

