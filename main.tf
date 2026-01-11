resource "azurerm_consumption_budget_subscription" "consumption_budget_subscriptions" {
  for_each = var.consumption_budget_subscriptions

  amount          = each.value.amount
  name            = each.value.name
  subscription_id = each.value.subscription_id
  etag            = each.value.etag
  time_grain      = each.value.time_grain

  notification {
    contact_emails = each.value.notification.contact_emails
    contact_groups = each.value.notification.contact_groups
    contact_roles  = each.value.notification.contact_roles
    enabled        = each.value.notification.enabled
    operator       = each.value.notification.operator
    threshold      = each.value.notification.threshold
    threshold_type = each.value.notification.threshold_type
  }

  time_period {
    end_date   = each.value.time_period.end_date
    start_date = each.value.time_period.start_date
  }

  dynamic "filter" {
    for_each = each.value.filter != null ? [each.value.filter] : []
    content {
      dynamic "dimension" {
        for_each = filter.value.dimension != null ? [filter.value.dimension] : []
        content {
          name     = dimension.value.name
          operator = dimension.value.operator
          values   = dimension.value.values
        }
      }
      dynamic "tag" {
        for_each = filter.value.tag != null ? [filter.value.tag] : []
        content {
          name     = tag.value.name
          operator = tag.value.operator
          values   = tag.value.values
        }
      }
    }
  }
}

