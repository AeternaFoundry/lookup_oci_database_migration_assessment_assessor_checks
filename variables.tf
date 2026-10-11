variable "database_migration_assessment_assessor_checks_lookup" {
  description = <<EOT
Map of database_migration_assessment_assessor_checks_lookup, attributes below
Required:
    - assessment_id
    - assessor_name
    - compartment_id
Optional:
    - display_name
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    assessment_id  = string
    assessor_name  = string
    compartment_id = string
    display_name   = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

