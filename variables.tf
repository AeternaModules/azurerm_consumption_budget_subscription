variable "consumption_budget_subscriptions" {
  description = <<EOT
Map of consumption_budget_subscriptions, attributes below
Required:
    - amount
    - name
    - subscription_id
    - notification (block):
        - contact_emails (optional)
        - contact_groups (optional)
        - contact_roles (optional)
        - enabled (optional)
        - operator (required)
        - threshold (required)
        - threshold_type (optional)
    - time_period (block):
        - end_date (optional)
        - start_date (required)
Optional:
    - etag
    - time_grain
    - filter (block):
        - dimension (optional, block):
            - name (required)
            - operator (optional)
            - values (required)
        - tag (optional, block):
            - name (required)
            - operator (optional)
            - values (required)
EOT

  type = map(object({
    amount          = number
    name            = string
    subscription_id = string
    etag            = optional(string)
    time_grain      = optional(string, "Monthly")
    notification = object({
      contact_emails = optional(list(string))
      contact_groups = optional(list(string))
      contact_roles  = optional(list(string))
      enabled        = optional(bool, true)
      operator       = string
      threshold      = number
      threshold_type = optional(string, "Actual")
    })
    time_period = object({
      end_date   = optional(string)
      start_date = string
    })
    filter = optional(object({
      dimension = optional(object({
        name     = string
        operator = optional(string, "In")
        values   = list(string)
      }))
      tag = optional(object({
        name     = string
        operator = optional(string, "In")
        values   = list(string)
      }))
    }))
  }))
}

