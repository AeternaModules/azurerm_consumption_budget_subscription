output "consumption_budget_subscriptions_id" {
  description = "Map of id values across all consumption_budget_subscriptions, keyed the same as var.consumption_budget_subscriptions"
  value       = { for k, v in azurerm_consumption_budget_subscription.consumption_budget_subscriptions : k => v.id }
}
output "consumption_budget_subscriptions_amount" {
  description = "Map of amount values across all consumption_budget_subscriptions, keyed the same as var.consumption_budget_subscriptions"
  value       = { for k, v in azurerm_consumption_budget_subscription.consumption_budget_subscriptions : k => v.amount }
}
output "consumption_budget_subscriptions_etag" {
  description = "Map of etag values across all consumption_budget_subscriptions, keyed the same as var.consumption_budget_subscriptions"
  value       = { for k, v in azurerm_consumption_budget_subscription.consumption_budget_subscriptions : k => v.etag }
}
output "consumption_budget_subscriptions_filter" {
  description = "Map of filter values across all consumption_budget_subscriptions, keyed the same as var.consumption_budget_subscriptions"
  value       = { for k, v in azurerm_consumption_budget_subscription.consumption_budget_subscriptions : k => v.filter }
}
output "consumption_budget_subscriptions_name" {
  description = "Map of name values across all consumption_budget_subscriptions, keyed the same as var.consumption_budget_subscriptions"
  value       = { for k, v in azurerm_consumption_budget_subscription.consumption_budget_subscriptions : k => v.name }
}
output "consumption_budget_subscriptions_notification" {
  description = "Map of notification values across all consumption_budget_subscriptions, keyed the same as var.consumption_budget_subscriptions"
  value       = { for k, v in azurerm_consumption_budget_subscription.consumption_budget_subscriptions : k => v.notification }
}
output "consumption_budget_subscriptions_subscription_id" {
  description = "Map of subscription_id values across all consumption_budget_subscriptions, keyed the same as var.consumption_budget_subscriptions"
  value       = { for k, v in azurerm_consumption_budget_subscription.consumption_budget_subscriptions : k => v.subscription_id }
}
output "consumption_budget_subscriptions_time_grain" {
  description = "Map of time_grain values across all consumption_budget_subscriptions, keyed the same as var.consumption_budget_subscriptions"
  value       = { for k, v in azurerm_consumption_budget_subscription.consumption_budget_subscriptions : k => v.time_grain }
}
output "consumption_budget_subscriptions_time_period" {
  description = "Map of time_period values across all consumption_budget_subscriptions, keyed the same as var.consumption_budget_subscriptions"
  value       = { for k, v in azurerm_consumption_budget_subscription.consumption_budget_subscriptions : k => v.time_period }
}

