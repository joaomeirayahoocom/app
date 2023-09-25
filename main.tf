
module "tfstate_st_backend" {

    source                  = "./tfstate_st_backend"
    
}

module "paas_infra" {
  
  source                  = "./paas_infra"

}

module "app_plan" {

  source                  = "./app_plan"

  rg_name                 = module.paas_infra.resource_group_name
  rg_region               = module.paas_infra.resource_group_location
  
}

module "web_app" {

  source                  = "./web_app"

  rg_name                 = module.paas_infra.resource_group_name
  rg_region               = module.paas_infra.resource_group_location
  app_plan_id             = module.app_plan.azurerm_app_service_plan_id
  #st_endpoint             = module.infrapaas.azurerm_storage_account_primary_blob_endpoint > Will access the <webapp name with rbac access to the container only>.zip webapp deploymnet file from the blob. future upgrade.
  
}


