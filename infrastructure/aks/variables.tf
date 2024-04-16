variable "location" {
  description = "The Azure region where the resources will be created."
  type        = string
  default     = "Canada Central"
}

variable "kubernetes_version" {
  description = "The version of Kubernetes to use for the AKS cluster."
  type        = string
  default     = "1.21.2"
}

variable "node_count" {
  description = "The number of nodes to create in the AKS cluster."
  type        = number
  default     = 1
}

variable "vm_size" {
  description = "The size of the VMs to use for the AKS cluster."
  type        = string
  default     = "Standard_B2s"
}