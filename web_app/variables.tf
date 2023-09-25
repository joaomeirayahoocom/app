# variables.tf | Auth and Application variables
variable "rg_name" {}

variable "rg_region" {}

variable "app_plan_id" {}

variable "webapp_name" {
  type        = string
  description = "plan name"
  default     = "paas"
}

variable "role_name" {
  type        = string
  description = "role name"
  default     = "Storage Blob Data Reader"
}

variable "container_name" {
  type        = string
  description = "container name"
  default     = "deploy"
}

variable "container_access" {
  type        = string
  description = "container access type"
  default     = "private"
}

variable "subscription_id" {
  type        = string
  description = "subscription id"
  default     = "b7cda313-770f-4cf7-89fd-81621c3709fd"
}

variable "tenant_id" {
  type        = string
  description = "tenamt id"
  default     = "99346566-c77d-4104-b222-6e0915476b75"
}

variable "storage_acc_name" {

  type        = string
  description = "storage acc name"
  default     = "st17df16d789ed0fb5"
}


