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
