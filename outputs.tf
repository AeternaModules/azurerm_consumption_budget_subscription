output "consumption_budget_subscriptions" {
  description = "All consumption_budget_subscription resources"
  value       = azurerm_consumption_budget_subscription.consumption_budget_subscriptions
}
output "consumption_budget_subscriptions_amount" {
  description = "List of amount values across all consumption_budget_subscriptions"
  value       = [for k, v in azurerm_consumption_budget_subscription.consumption_budget_subscriptions : v.amount]
}
output "consumption_budget_subscriptions_etag" {
  description = "List of etag values across all consumption_budget_subscriptions"
  value       = [for k, v in azurerm_consumption_budget_subscription.consumption_budget_subscriptions : v.etag]
}
output "consumption_budget_subscriptions_filter" {
  description = "List of filter values across all consumption_budget_subscriptions"
  value       = [for k, v in azurerm_consumption_budget_subscription.consumption_budget_subscriptions : v.filter]
}
output "consumption_budget_subscriptions_name" {
  description = "List of name values across all consumption_budget_subscriptions"
  value       = [for k, v in azurerm_consumption_budget_subscription.consumption_budget_subscriptions : v.name]
}
output "consumption_budget_subscriptions_notification" {
  description = "List of notification values across all consumption_budget_subscriptions"
  value       = [for k, v in azurerm_consumption_budget_subscription.consumption_budget_subscriptions : v.notification]
}
output "consumption_budget_subscriptions_subscription_id" {
  description = "List of subscription_id values across all consumption_budget_subscriptions"
  value       = [for k, v in azurerm_consumption_budget_subscription.consumption_budget_subscriptions : v.subscription_id]
}
output "consumption_budget_subscriptions_time_grain" {
  description = "List of time_grain values across all consumption_budget_subscriptions"
  value       = [for k, v in azurerm_consumption_budget_subscription.consumption_budget_subscriptions : v.time_grain]
}
output "consumption_budget_subscriptions_time_period" {
  description = "List of time_period values across all consumption_budget_subscriptions"
  value       = [for k, v in azurerm_consumption_budget_subscription.consumption_budget_subscriptions : v.time_period]
}

