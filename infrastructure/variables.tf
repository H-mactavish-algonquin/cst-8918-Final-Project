variable "resource_group_name_backend" {
  description = "Name of the resource group for the Terraform backend"
  type        = string
  default     = "cst8918-final-project-group-fm4"
}

variable "location_backend" {
  description = "Location of the resource group for the Terraform backend"
  type        = string
  default     = "Canada Central"
}

variable "resource_group_name_app" {
  description = "Name of the resource group for the Remix Weather Application"
  type        = string
  default     = "cst8918-final-project-group-fm4"
}

variable "location_app" {
  description = "Location of the resource group for the Remix Weather Application"
  type        = string
  default     = "Canada Central"
}