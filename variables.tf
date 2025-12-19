##################
#### variables ###
##################
variable "project_id" {
  description = "VM Project ID"
  type        = string
  default = "my-project-id"
}

variable "region" {
  description = "Region of GCP"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "GCP Zone"
  type        = string
  default     = "us-central1-a"
}

variable "vm_name" {
  description = "VM name"
  type        = string
  default     = "GCP-VM"
}

variable "machine_type" {
  description = "Machine type"
  type        = string
  default     = "e2-medium"
}

#just for test line