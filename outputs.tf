output "service_custom_fields_id" {
  description = "Map of id values across all service_custom_fields, keyed the same as var.service_custom_fields"
  value       = { for k, v in pagerduty_service_custom_field.service_custom_fields : k => v.id }
}
output "service_custom_fields_data_type" {
  description = "Map of data_type values across all service_custom_fields, keyed the same as var.service_custom_fields"
  value       = { for k, v in pagerduty_service_custom_field.service_custom_fields : k => v.data_type }
}
output "service_custom_fields_default_value" {
  description = "Map of default_value values across all service_custom_fields, keyed the same as var.service_custom_fields"
  value       = { for k, v in pagerduty_service_custom_field.service_custom_fields : k => v.default_value }
}
output "service_custom_fields_description" {
  description = "Map of description values across all service_custom_fields, keyed the same as var.service_custom_fields"
  value       = { for k, v in pagerduty_service_custom_field.service_custom_fields : k => v.description }
}
output "service_custom_fields_display_name" {
  description = "Map of display_name values across all service_custom_fields, keyed the same as var.service_custom_fields"
  value       = { for k, v in pagerduty_service_custom_field.service_custom_fields : k => v.display_name }
}
output "service_custom_fields_enabled" {
  description = "Map of enabled values across all service_custom_fields, keyed the same as var.service_custom_fields"
  value       = { for k, v in pagerduty_service_custom_field.service_custom_fields : k => v.enabled }
}
output "service_custom_fields_field_option" {
  description = "Map of field_option values across all service_custom_fields, keyed the same as var.service_custom_fields"
  value       = { for k, v in pagerduty_service_custom_field.service_custom_fields : k => v.field_option }
}
output "service_custom_fields_field_type" {
  description = "Map of field_type values across all service_custom_fields, keyed the same as var.service_custom_fields"
  value       = { for k, v in pagerduty_service_custom_field.service_custom_fields : k => v.field_type }
}
output "service_custom_fields_name" {
  description = "Map of name values across all service_custom_fields, keyed the same as var.service_custom_fields"
  value       = { for k, v in pagerduty_service_custom_field.service_custom_fields : k => v.name }
}
output "service_custom_fields_self" {
  description = "Map of self values across all service_custom_fields, keyed the same as var.service_custom_fields"
  value       = { for k, v in pagerduty_service_custom_field.service_custom_fields : k => v.self }
}
output "service_custom_fields_summary" {
  description = "Map of summary values across all service_custom_fields, keyed the same as var.service_custom_fields"
  value       = { for k, v in pagerduty_service_custom_field.service_custom_fields : k => v.summary }
}
output "service_custom_fields_type" {
  description = "Map of type values across all service_custom_fields, keyed the same as var.service_custom_fields"
  value       = { for k, v in pagerduty_service_custom_field.service_custom_fields : k => v.type }
}

