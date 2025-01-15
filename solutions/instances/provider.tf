########################################################################################################################
# Provider config
########################################################################################################################



provider "ibm" {
  alias            = "cos"
  ibmcloud_api_key = var.ibmcloud_api_key
  region           = var.cos_region
  visibility       = var.provider_visibility
}
