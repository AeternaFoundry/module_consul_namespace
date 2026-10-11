resource "consul_namespace" "namespaces" {
  for_each = var.namespaces

  name            = each.value.name
  description     = each.value.description
  meta            = each.value.meta
  partition       = each.value.partition
  policy_defaults = each.value.policy_defaults
  role_defaults   = each.value.role_defaults
}

