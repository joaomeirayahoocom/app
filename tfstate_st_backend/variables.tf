variable "st_tier" {
  type        = string
  description = "st tier type"
  default     = "Standard"
}

variable "st_replication_type" {
  type        = string
  description = "st replication type"
  default     = "LRS"
}

variable "st_region" {
  type        = string
  description = "azure st region"
  default     = "East US 2"
}

variable "st_rg_name" {
  type        = string
  description = "rg st name"
  default     = "tfstate"
}

variable "container_name" {
  type        = string
  description = "container name"
  default     = "paasfstatefile"
}

variable "container_access" {
  type        = string
  description = "container access type"
  default     = "private"
}

variable "env_name" {
  type        = string
  description = "rg st name"
  default     = "pass"
}

variable "storage_acc_name" {

  type        = string
  description = "storage acc name"
  default     = "tfstate51nfm"
  
}

