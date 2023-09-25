

resource "azurerm_windows_web_app" "paas" {
  name                = "${var.webapp_name}-${terraform.workspace}"
  resource_group_name = var.rg_name
  location            = var.rg_region
  service_plan_id     =  var.app_plan_id 
  
  site_config {
  scm_minimum_tls_version = 1.2

    application_stack {
      current_stack = "dotnet"
      dotnet_version = "v6.0"
    
    }

  }

    identity {
        type = "SystemAssigned"
      }

  app_settings = {}
}

resource "azurerm_storage_container" "deploy" {
  
  name                  = var.container_name
  storage_account_name  = var.storage_acc_name 
  container_access_type = var.container_access 
}


resource "azurerm_role_assignment" "Reader" {
 
  #RBAC to access the Blob Storage' -> container -> blob storying web app deploymnents files. 
  
  role_definition_name = var.role_name 

  scope = azurerm_storage_container.deploy.resource_manager_id
  
  principal_id = azurerm_windows_web_app.paas.identity.0.principal_id
}




