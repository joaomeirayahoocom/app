# variables.tf | Auth and Application variables
variable "rg_name" {}

variable "rg_region" {}


variable "applan_ostype" {
  type        = string
  description = "applan ostype"
  default     = "Windows"
}

variable "appplan_name" {
  type        = string
  description = "plan name"
  default     = "paas"
}

variable "appplan_size" {
  type        = string
  description = "plan name"
  default     = "S1"
}




