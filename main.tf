resource "pagerduty_service_custom_field" "service_custom_fields" {
  for_each = var.service_custom_fields

  data_type     = each.value.data_type
  display_name  = each.value.display_name
  field_type    = each.value.field_type
  name          = each.value.name
  default_value = each.value.default_value
  description   = each.value.description
  enabled       = each.value.enabled

  dynamic "field_option" {
    for_each = each.value.field_option != null ? each.value.field_option : []
    content {
      data_type = field_option.value.data_type
      value     = field_option.value.value
    }
  }
}

