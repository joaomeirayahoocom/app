
resource "azurerm_storage_container" "tfstate" {
  
  name                  = var.container_name
  storage_account_name  = var.storage_acc_name
  container_access_type = var.container_access 
}
