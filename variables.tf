variable "service_custom_fields" {
  description = <<EOT
Map of service_custom_fields, attributes below
Required:
    - data_type
    - display_name
    - field_type
    - name
Optional:
    - default_value
    - description
    - enabled
    - field_option (block):
        - data_type (required)
        - value (required)
EOT

  type = map(object({
    data_type     = string
    display_name  = string
    field_type    = string
    name          = string
    default_value = optional(string)
    description   = optional(string)
    enabled       = optional(bool)
    field_option = optional(list(object({
      data_type = string
      value     = string
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.service_custom_fields : (
        v.field_option == null || alltrue([for item in v.field_option : (contains(["string"], item.data_type))])
      )
    ])
    error_message = "must be one of: \"string\""
  }
}

