
output "azurerm_app_service_plan" {
 value = azurerm_service_plan.paas.name
}

output "azurerm_app_service_plan_id" {
 value = azurerm_service_plan.paas.id
}