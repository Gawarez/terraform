resource "oci_core_instance" "ubuntu_instance" {
  # Required
  availability_domain = data.oci_identity_availability_domains.ads.availability_domains[0].name
  compartment_id      = var.compartment_ocid
  shape               = "VM.Standard.E2.1.Micro"
  source_details {
    source_id   = "ocid1.image.oc1.sa-saopaulo-1.aaaaaaaahy7z4wro5mwcv47hkk5qyfcrjar3jxef62rtsqi3bsnuv6m5pvbq"
    source_type = "image"
  }

  # Optional
  display_name = "tf-ubuntu"
  create_vnic_details {
    assign_public_ip = true
    subnet_id        = var.subnet_id
  }
  metadata = {
    ssh_authorized_keys = file(var.compute_pub_key)
  }
  preserve_boot_volume = false
}