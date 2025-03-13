
# read ssh keys available in the cloud under this account - don't care
# about the keys just want to force the terraform to login to the cloud.
data "ibm_is_ssh_keys" "mykeys" {
}

locals {
    howmanykeys = length(data.ibm_is_ssh_keys.mykeys.keys)
}
output "mykeys" {
    value = "There are ${local.howmanykeys} ssh keys defined by the account owning this api key."
}

resource "time_sleep" "wait_3_seconds" {
    create_duration = "3s"
}

output "resource_group_name" {
    value       = var.resource_group_name
}

output "resource_group_id" {
    value       = "resource_group_id"
}

output "scc_id" {
    value       = "scc_id"
}

output "scc_guid" {
    value       = "scc_guid"
}

output "scc_crn" {
    value       = "scc_crn"
}

output "scc_name" {
    value       = "scc_name"
}

output "scc_workload_protection_id" {
    value       = "scc_workload_protection_id"
}

output "scc_workload_protection_crn" {
    value       = "scc_workload_protection_crn"
}

output "scc_workload_protection_name" {
    value       = "scc_workload_protection_name"
}

output "scc_workload_protection_ingestion_endpoint" {
    value       = "scc_workload_protection_ingestion_endpoint"
}

output "scc_workload_protection_api_endpoint" {
    value       = "scc_workload_protection_api_endpoint"
}

output "scc_workload_protection_access_key" {
    value       = "scc_workload_protection_access_key"
}

output "scc_attachment_info" {
    value = "scc_attachment_info"
}

########################################################################################################################
# SCC COS
########################################################################################################################

output "scc_cos_kms_key_crn" {
    value = "scc_cos_kms_key_crn"
}

output "scc_cos_bucket_name" {
    value       = var.scc_cos_bucket_name
}

output "scc_cos_bucket_config" {
    value       = "scc_cos_bucket_config"
}

output "scc_cos_instance_id" {
    value       = "scc_cos_instance_id"
}

output "scc_cos_instance_guid" {
    value       = "scc_cos_instance_guid"
}

output "scc_cos_instance_name" {
    value       = "scc_cos_instance_name"
}

output "scc_cos_instance_crn" {
    value       = "scc_cos_instance_crn"
}

output "scc_cos_resource_keys" {
    value       = "scc_cos_resource_keys"
}
