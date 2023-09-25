resource "azurerm_service_plan" "paas" {

  name                = "${var.appplan_name}-${terraform.workspace}"
  location            = var.rg_region
  resource_group_name = var.rg_name
  #maximum_elastic_worker_count = var.appplan_workers
  os_type = var.applan_ostype
  sku_name = var.appplan_size
  
}