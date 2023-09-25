
resource "azurerm_resource_group" "rg_paas" {
  name     = "${var.rg_name}-${terraform.workspace}"
  location = var.rg_region
}

