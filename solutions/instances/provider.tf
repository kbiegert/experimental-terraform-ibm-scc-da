########################################################################################################################
# Provider config
########################################################################################################################



provider "ibm" {
  ibmcloud_api_key = var.ibmcloud_api_key
  region           = "us-south"
  visibility       = var.provider_visibility
}

provider "ibm" {
  alias            = "kms"
  ibmcloud_api_key = var.ibmcloud_kms_api_key != null ? var.ibmcloud_kms_api_key : var.ibmcloud_api_key
  region           = "us-south"
  visibility       = var.provider_visibility
}

provider "ibm" {
  alias            = "cos"
  ibmcloud_api_key = var.ibmcloud_api_key
  region           = "us-south"
  visibility       = var.provider_visibility
}

provider "ibm" {
  alias            = "en"
  ibmcloud_api_key = var.ibmcloud_api_key
  region           = "us-south"
  visibility       = var.provider_visibility
}
