output "account_network_policies_account_id" {
  description = "Map of account_id values across all account_network_policies, keyed the same as var.account_network_policies except keys with no account_id are omitted"
  value       = { for k, v in databricks_account_network_policy.account_network_policies : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "account_network_policies_egress" {
  description = "Map of egress values across all account_network_policies, keyed the same as var.account_network_policies except keys with no egress are omitted"
  value       = { for k, v in databricks_account_network_policy.account_network_policies : k => v.egress if v.egress != null && length(v.egress) > 0 }
}
output "account_network_policies_ingress" {
  description = "Map of ingress values across all account_network_policies, keyed the same as var.account_network_policies except keys with no ingress are omitted"
  value       = { for k, v in databricks_account_network_policy.account_network_policies : k => v.ingress if v.ingress != null && length(v.ingress) > 0 }
}
output "account_network_policies_ingress_dry_run" {
  description = "Map of ingress_dry_run values across all account_network_policies, keyed the same as var.account_network_policies except keys with no ingress_dry_run are omitted"
  value       = { for k, v in databricks_account_network_policy.account_network_policies : k => v.ingress_dry_run if v.ingress_dry_run != null && length(v.ingress_dry_run) > 0 }
}
output "account_network_policies_network_policy_id" {
  description = "Map of network_policy_id values across all account_network_policies, keyed the same as var.account_network_policies except keys with no network_policy_id are omitted"
  value       = { for k, v in databricks_account_network_policy.account_network_policies : k => v.network_policy_id if v.network_policy_id != null && length(v.network_policy_id) > 0 }
}

