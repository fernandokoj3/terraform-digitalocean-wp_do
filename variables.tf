
variable "region" {
  type    = string
  default = "nyc1"
}

variable "vms_ssh" {
  type        = string
  description = "Chave ssh das VMs"
}

variable "wp_vm_count" {
  type        = number
  default     = 2
  description = "Número de maquinas"

  validation {
    condition     = var.wp_vm_count > 1
    error_message = "O número minimo de maquinas é dois"
  }
}
