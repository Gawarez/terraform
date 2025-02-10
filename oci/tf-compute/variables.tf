variable "tenancy_ocid" {
  description = "OCID from the tenancy page"
  type        = string
}

variable "user_ocid" {
  description = "OCID from the user page"
  type        = string
}

variable "private_key_path" {
  description = "private key path"
  type        = string
}

variable "fingerprint" {
  description = "fingerprint from the generated key"
  type        = string
}

variable "region" {
  description = "region where you have OCI tenancy"
  type        = string
  default     = "sa-saopaulo-1"
}

variable "compartment_ocid" {
  description = "OCID from the used compartment"
  type        = string
}

variable "subnet_id" {
  description = "OCID from the created subnet on the compartment"
  type        = string
}

variable "compute_pub_key" {
  description = "Public key path for the created VM"
  type        = string
}