output "namespaces_id" {
  description = "Map of id values across all namespaces, keyed the same as var.namespaces"
  value       = { for k, v in consul_namespace.namespaces : k => v.id }
}
output "namespaces_description" {
  description = "Map of description values across all namespaces, keyed the same as var.namespaces"
  value       = { for k, v in consul_namespace.namespaces : k => v.description }
}
output "namespaces_meta" {
  description = "Map of meta values across all namespaces, keyed the same as var.namespaces"
  value       = { for k, v in consul_namespace.namespaces : k => v.meta }
}
output "namespaces_name" {
  description = "Map of name values across all namespaces, keyed the same as var.namespaces"
  value       = { for k, v in consul_namespace.namespaces : k => v.name }
}
output "namespaces_partition" {
  description = "Map of partition values across all namespaces, keyed the same as var.namespaces"
  value       = { for k, v in consul_namespace.namespaces : k => v.partition }
}
output "namespaces_policy_defaults" {
  description = "Map of policy_defaults values across all namespaces, keyed the same as var.namespaces"
  value       = { for k, v in consul_namespace.namespaces : k => v.policy_defaults }
}
output "namespaces_role_defaults" {
  description = "Map of role_defaults values across all namespaces, keyed the same as var.namespaces"
  value       = { for k, v in consul_namespace.namespaces : k => v.role_defaults }
}

