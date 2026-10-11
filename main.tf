data "oci_database_migration_assessment_assessor_checks" "database_migration_assessment_assessor_checks_lookup" {
  for_each = var.database_migration_assessment_assessor_checks_lookup

  assessment_id  = each.value.assessment_id
  assessor_name  = each.value.assessor_name
  compartment_id = each.value.compartment_id
  display_name   = each.value.display_name

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

