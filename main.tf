resource "databricks_account_network_policy" "account_network_policies" {
  for_each = var.account_network_policies

  account_id        = each.value.account_id
  egress            = each.value.egress
  ingress           = each.value.ingress
  ingress_dry_run   = each.value.ingress_dry_run
  network_policy_id = each.value.network_policy_id
}

