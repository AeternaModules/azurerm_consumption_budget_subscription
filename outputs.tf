output "consumption_budget_subscriptions_id" {
  description = "Map of id values across all consumption_budget_subscriptions, keyed the same as var.consumption_budget_subscriptions"
  value       = { for k, v in azurerm_consumption_budget_subscription.consumption_budget_subscriptions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "consumption_budget_subscriptions_amount" {
  description = "Map of amount values across all consumption_budget_subscriptions, keyed the same as var.consumption_budget_subscriptions"
  value       = { for k, v in azurerm_consumption_budget_subscription.consumption_budget_subscriptions : k => v.amount if v.amount != null }
}
output "consumption_budget_subscriptions_etag" {
  description = "Map of etag values across all consumption_budget_subscriptions, keyed the same as var.consumption_budget_subscriptions"
  value       = { for k, v in azurerm_consumption_budget_subscription.consumption_budget_subscriptions : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "consumption_budget_subscriptions_filter" {
  description = "Map of filter values across all consumption_budget_subscriptions, keyed the same as var.consumption_budget_subscriptions"
  value       = { for k, v in azurerm_consumption_budget_subscription.consumption_budget_subscriptions : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "consumption_budget_subscriptions_name" {
  description = "Map of name values across all consumption_budget_subscriptions, keyed the same as var.consumption_budget_subscriptions"
  value       = { for k, v in azurerm_consumption_budget_subscription.consumption_budget_subscriptions : k => v.name if v.name != null && length(v.name) > 0 }
}
output "consumption_budget_subscriptions_notification" {
  description = "Map of notification values across all consumption_budget_subscriptions, keyed the same as var.consumption_budget_subscriptions"
  value       = { for k, v in azurerm_consumption_budget_subscription.consumption_budget_subscriptions : k => v.notification if v.notification != null && length(v.notification) > 0 }
}
output "consumption_budget_subscriptions_subscription_id" {
  description = "Map of subscription_id values across all consumption_budget_subscriptions, keyed the same as var.consumption_budget_subscriptions"
  value       = { for k, v in azurerm_consumption_budget_subscription.consumption_budget_subscriptions : k => v.subscription_id if v.subscription_id != null && length(v.subscription_id) > 0 }
}
output "consumption_budget_subscriptions_time_grain" {
  description = "Map of time_grain values across all consumption_budget_subscriptions, keyed the same as var.consumption_budget_subscriptions"
  value       = { for k, v in azurerm_consumption_budget_subscription.consumption_budget_subscriptions : k => v.time_grain if v.time_grain != null && length(v.time_grain) > 0 }
}
output "consumption_budget_subscriptions_time_period" {
  description = "Map of time_period values across all consumption_budget_subscriptions, keyed the same as var.consumption_budget_subscriptions"
  value       = { for k, v in azurerm_consumption_budget_subscription.consumption_budget_subscriptions : k => v.time_period if v.time_period != null && length(v.time_period) > 0 }
}

