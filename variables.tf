variable "namespaces" {
  description = <<EOT
Map of namespaces, attributes below
Required:
    - name
Optional:
    - description
    - meta
    - partition
    - policy_defaults
    - role_defaults
EOT

  type = map(object({
    name            = string
    description     = optional(string)
    meta            = optional(map(string))
    partition       = optional(string)
    policy_defaults = optional(list(string))
    role_defaults   = optional(list(string))
  }))
}

