variable "account_network_policies" {
  description = <<EOT
Map of account_network_policies, attributes below
Optional:
    - account_id
    - egress
    - ingress
    - ingress_dry_run
    - network_policy_id
EOT

  type = map(object({
    account_id = optional(string)
    egress = optional(object({
      network_access = optional(object({
        allowed_databricks_destinations = optional(list(object({
          workspace_ids = optional(list(number))
        })))
        allowed_internet_destinations = optional(list(object({
          destination               = optional(string)
          internet_destination_type = optional(string)
        })))
        allowed_storage_destinations = optional(list(object({
          azure_storage_account    = optional(string)
          azure_storage_service    = optional(string)
          bucket_name              = optional(string)
          region                   = optional(string)
          storage_destination_type = optional(string)
        })))
        blocked_internet_destinations = optional(list(object({
          destination               = optional(string)
          internet_destination_type = optional(string)
        })))
        policy_enforcement = optional(object({
          dry_run_mode_product_filter = optional(list(string))
          enforcement_mode            = optional(string)
        }))
        restriction_mode = string
      }))
    }))
    ingress = optional(object({
      cross_workspace_access = optional(object({
        allow_rules = optional(list(object({
          authentication = optional(object({
            identities = optional(list(object({
              principal_id   = optional(number)
              principal_type = optional(string)
            })))
            identity_type = optional(string)
          }))
          destination = optional(object({
            account_api = optional(object({
              scope_qualifier = optional(string)
              scopes          = optional(list(string))
            }))
            account_databricks_one = optional(object({
              all_destinations = optional(bool)
            }))
            account_ui = optional(object({
              all_destinations = optional(bool)
            }))
            all_destinations = optional(bool)
            apps_runtime = optional(object({
              all_destinations = optional(bool)
            }))
            lakebase_runtime = optional(object({
              all_destinations = optional(bool)
            }))
            workspace_api = optional(object({
              excluded_scopes = optional(list(string))
              scope_qualifier = optional(string)
              scopes          = optional(list(string))
            }))
            workspace_ui = optional(object({
              all_destinations = optional(bool)
            }))
          }))
          label = optional(string)
          origin = optional(object({
            all_source_workspaces = optional(bool)
            selected_workspaces = optional(object({
              workspace_ids = optional(list(number))
            }))
          }))
        })))
        deny_rules = optional(list(object({
          authentication = optional(object({
            identities = optional(list(object({
              principal_id   = optional(number)
              principal_type = optional(string)
            })))
            identity_type = optional(string)
          }))
          destination = optional(object({
            account_api = optional(object({
              scope_qualifier = optional(string)
              scopes          = optional(list(string))
            }))
            account_databricks_one = optional(object({
              all_destinations = optional(bool)
            }))
            account_ui = optional(object({
              all_destinations = optional(bool)
            }))
            all_destinations = optional(bool)
            apps_runtime = optional(object({
              all_destinations = optional(bool)
            }))
            lakebase_runtime = optional(object({
              all_destinations = optional(bool)
            }))
            workspace_api = optional(object({
              excluded_scopes = optional(list(string))
              scope_qualifier = optional(string)
              scopes          = optional(list(string))
            }))
            workspace_ui = optional(object({
              all_destinations = optional(bool)
            }))
          }))
          label = optional(string)
          origin = optional(object({
            all_source_workspaces = optional(bool)
            selected_workspaces = optional(object({
              workspace_ids = optional(list(number))
            }))
          }))
        })))
        restriction_mode = string
      }))
      private_access = optional(object({
        allow_rules = optional(list(object({
          authentication = optional(object({
            identities = optional(list(object({
              principal_id   = optional(number)
              principal_type = optional(string)
            })))
            identity_type = optional(string)
          }))
          destination = optional(object({
            account_api = optional(object({
              scope_qualifier = optional(string)
              scopes          = optional(list(string))
            }))
            account_databricks_one = optional(object({
              all_destinations = optional(bool)
            }))
            account_ui = optional(object({
              all_destinations = optional(bool)
            }))
            all_destinations = optional(bool)
            apps_runtime = optional(object({
              all_destinations = optional(bool)
            }))
            lakebase_runtime = optional(object({
              all_destinations = optional(bool)
            }))
            workspace_api = optional(object({
              excluded_scopes = optional(list(string))
              scope_qualifier = optional(string)
              scopes          = optional(list(string))
            }))
            workspace_ui = optional(object({
              all_destinations = optional(bool)
            }))
          }))
          label = optional(string)
          origin = optional(object({
            all_private_access           = optional(bool)
            all_registered_endpoints     = optional(bool)
            azure_workspace_private_link = optional(bool)
            endpoints = optional(object({
              endpoint_ids = optional(list(string))
            }))
          }))
        })))
        deny_rules = optional(list(object({
          authentication = optional(object({
            identities = optional(list(object({
              principal_id   = optional(number)
              principal_type = optional(string)
            })))
            identity_type = optional(string)
          }))
          destination = optional(object({
            account_api = optional(object({
              scope_qualifier = optional(string)
              scopes          = optional(list(string))
            }))
            account_databricks_one = optional(object({
              all_destinations = optional(bool)
            }))
            account_ui = optional(object({
              all_destinations = optional(bool)
            }))
            all_destinations = optional(bool)
            apps_runtime = optional(object({
              all_destinations = optional(bool)
            }))
            lakebase_runtime = optional(object({
              all_destinations = optional(bool)
            }))
            workspace_api = optional(object({
              excluded_scopes = optional(list(string))
              scope_qualifier = optional(string)
              scopes          = optional(list(string))
            }))
            workspace_ui = optional(object({
              all_destinations = optional(bool)
            }))
          }))
          label = optional(string)
          origin = optional(object({
            all_private_access           = optional(bool)
            all_registered_endpoints     = optional(bool)
            azure_workspace_private_link = optional(bool)
            endpoints = optional(object({
              endpoint_ids = optional(list(string))
            }))
          }))
        })))
        restriction_mode = string
      }))
      public_access = optional(object({
        allow_rules = optional(list(object({
          authentication = optional(object({
            identities = optional(list(object({
              principal_id   = optional(number)
              principal_type = optional(string)
            })))
            identity_type = optional(string)
          }))
          destination = optional(object({
            account_api = optional(object({
              scope_qualifier = optional(string)
              scopes          = optional(list(string))
            }))
            account_databricks_one = optional(object({
              all_destinations = optional(bool)
            }))
            account_ui = optional(object({
              all_destinations = optional(bool)
            }))
            all_destinations = optional(bool)
            apps_runtime = optional(object({
              all_destinations = optional(bool)
            }))
            lakebase_runtime = optional(object({
              all_destinations = optional(bool)
            }))
            workspace_api = optional(object({
              excluded_scopes = optional(list(string))
              scope_qualifier = optional(string)
              scopes          = optional(list(string))
            }))
            workspace_ui = optional(object({
              all_destinations = optional(bool)
            }))
          }))
          label = optional(string)
          origin = optional(object({
            all_ip_ranges = optional(bool)
            excluded_ip_ranges = optional(object({
              ip_ranges = optional(list(string))
            }))
            included_ip_ranges = optional(object({
              ip_ranges = optional(list(string))
            }))
          }))
        })))
        deny_rules = optional(list(object({
          authentication = optional(object({
            identities = optional(list(object({
              principal_id   = optional(number)
              principal_type = optional(string)
            })))
            identity_type = optional(string)
          }))
          destination = optional(object({
            account_api = optional(object({
              scope_qualifier = optional(string)
              scopes          = optional(list(string))
            }))
            account_databricks_one = optional(object({
              all_destinations = optional(bool)
            }))
            account_ui = optional(object({
              all_destinations = optional(bool)
            }))
            all_destinations = optional(bool)
            apps_runtime = optional(object({
              all_destinations = optional(bool)
            }))
            lakebase_runtime = optional(object({
              all_destinations = optional(bool)
            }))
            workspace_api = optional(object({
              excluded_scopes = optional(list(string))
              scope_qualifier = optional(string)
              scopes          = optional(list(string))
            }))
            workspace_ui = optional(object({
              all_destinations = optional(bool)
            }))
          }))
          label = optional(string)
          origin = optional(object({
            all_ip_ranges = optional(bool)
            excluded_ip_ranges = optional(object({
              ip_ranges = optional(list(string))
            }))
            included_ip_ranges = optional(object({
              ip_ranges = optional(list(string))
            }))
          }))
        })))
        restriction_mode = string
      }))
    }))
    ingress_dry_run = optional(object({
      cross_workspace_access = optional(object({
        allow_rules = optional(list(object({
          authentication = optional(object({
            identities = optional(list(object({
              principal_id   = optional(number)
              principal_type = optional(string)
            })))
            identity_type = optional(string)
          }))
          destination = optional(object({
            account_api = optional(object({
              scope_qualifier = optional(string)
              scopes          = optional(list(string))
            }))
            account_databricks_one = optional(object({
              all_destinations = optional(bool)
            }))
            account_ui = optional(object({
              all_destinations = optional(bool)
            }))
            all_destinations = optional(bool)
            apps_runtime = optional(object({
              all_destinations = optional(bool)
            }))
            lakebase_runtime = optional(object({
              all_destinations = optional(bool)
            }))
            workspace_api = optional(object({
              excluded_scopes = optional(list(string))
              scope_qualifier = optional(string)
              scopes          = optional(list(string))
            }))
            workspace_ui = optional(object({
              all_destinations = optional(bool)
            }))
          }))
          label = optional(string)
          origin = optional(object({
            all_source_workspaces = optional(bool)
            selected_workspaces = optional(object({
              workspace_ids = optional(list(number))
            }))
          }))
        })))
        deny_rules = optional(list(object({
          authentication = optional(object({
            identities = optional(list(object({
              principal_id   = optional(number)
              principal_type = optional(string)
            })))
            identity_type = optional(string)
          }))
          destination = optional(object({
            account_api = optional(object({
              scope_qualifier = optional(string)
              scopes          = optional(list(string))
            }))
            account_databricks_one = optional(object({
              all_destinations = optional(bool)
            }))
            account_ui = optional(object({
              all_destinations = optional(bool)
            }))
            all_destinations = optional(bool)
            apps_runtime = optional(object({
              all_destinations = optional(bool)
            }))
            lakebase_runtime = optional(object({
              all_destinations = optional(bool)
            }))
            workspace_api = optional(object({
              excluded_scopes = optional(list(string))
              scope_qualifier = optional(string)
              scopes          = optional(list(string))
            }))
            workspace_ui = optional(object({
              all_destinations = optional(bool)
            }))
          }))
          label = optional(string)
          origin = optional(object({
            all_source_workspaces = optional(bool)
            selected_workspaces = optional(object({
              workspace_ids = optional(list(number))
            }))
          }))
        })))
        restriction_mode = string
      }))
      private_access = optional(object({
        allow_rules = optional(list(object({
          authentication = optional(object({
            identities = optional(list(object({
              principal_id   = optional(number)
              principal_type = optional(string)
            })))
            identity_type = optional(string)
          }))
          destination = optional(object({
            account_api = optional(object({
              scope_qualifier = optional(string)
              scopes          = optional(list(string))
            }))
            account_databricks_one = optional(object({
              all_destinations = optional(bool)
            }))
            account_ui = optional(object({
              all_destinations = optional(bool)
            }))
            all_destinations = optional(bool)
            apps_runtime = optional(object({
              all_destinations = optional(bool)
            }))
            lakebase_runtime = optional(object({
              all_destinations = optional(bool)
            }))
            workspace_api = optional(object({
              excluded_scopes = optional(list(string))
              scope_qualifier = optional(string)
              scopes          = optional(list(string))
            }))
            workspace_ui = optional(object({
              all_destinations = optional(bool)
            }))
          }))
          label = optional(string)
          origin = optional(object({
            all_private_access           = optional(bool)
            all_registered_endpoints     = optional(bool)
            azure_workspace_private_link = optional(bool)
            endpoints = optional(object({
              endpoint_ids = optional(list(string))
            }))
          }))
        })))
        deny_rules = optional(list(object({
          authentication = optional(object({
            identities = optional(list(object({
              principal_id   = optional(number)
              principal_type = optional(string)
            })))
            identity_type = optional(string)
          }))
          destination = optional(object({
            account_api = optional(object({
              scope_qualifier = optional(string)
              scopes          = optional(list(string))
            }))
            account_databricks_one = optional(object({
              all_destinations = optional(bool)
            }))
            account_ui = optional(object({
              all_destinations = optional(bool)
            }))
            all_destinations = optional(bool)
            apps_runtime = optional(object({
              all_destinations = optional(bool)
            }))
            lakebase_runtime = optional(object({
              all_destinations = optional(bool)
            }))
            workspace_api = optional(object({
              excluded_scopes = optional(list(string))
              scope_qualifier = optional(string)
              scopes          = optional(list(string))
            }))
            workspace_ui = optional(object({
              all_destinations = optional(bool)
            }))
          }))
          label = optional(string)
          origin = optional(object({
            all_private_access           = optional(bool)
            all_registered_endpoints     = optional(bool)
            azure_workspace_private_link = optional(bool)
            endpoints = optional(object({
              endpoint_ids = optional(list(string))
            }))
          }))
        })))
        restriction_mode = string
      }))
      public_access = optional(object({
        allow_rules = optional(list(object({
          authentication = optional(object({
            identities = optional(list(object({
              principal_id   = optional(number)
              principal_type = optional(string)
            })))
            identity_type = optional(string)
          }))
          destination = optional(object({
            account_api = optional(object({
              scope_qualifier = optional(string)
              scopes          = optional(list(string))
            }))
            account_databricks_one = optional(object({
              all_destinations = optional(bool)
            }))
            account_ui = optional(object({
              all_destinations = optional(bool)
            }))
            all_destinations = optional(bool)
            apps_runtime = optional(object({
              all_destinations = optional(bool)
            }))
            lakebase_runtime = optional(object({
              all_destinations = optional(bool)
            }))
            workspace_api = optional(object({
              excluded_scopes = optional(list(string))
              scope_qualifier = optional(string)
              scopes          = optional(list(string))
            }))
            workspace_ui = optional(object({
              all_destinations = optional(bool)
            }))
          }))
          label = optional(string)
          origin = optional(object({
            all_ip_ranges = optional(bool)
            excluded_ip_ranges = optional(object({
              ip_ranges = optional(list(string))
            }))
            included_ip_ranges = optional(object({
              ip_ranges = optional(list(string))
            }))
          }))
        })))
        deny_rules = optional(list(object({
          authentication = optional(object({
            identities = optional(list(object({
              principal_id   = optional(number)
              principal_type = optional(string)
            })))
            identity_type = optional(string)
          }))
          destination = optional(object({
            account_api = optional(object({
              scope_qualifier = optional(string)
              scopes          = optional(list(string))
            }))
            account_databricks_one = optional(object({
              all_destinations = optional(bool)
            }))
            account_ui = optional(object({
              all_destinations = optional(bool)
            }))
            all_destinations = optional(bool)
            apps_runtime = optional(object({
              all_destinations = optional(bool)
            }))
            lakebase_runtime = optional(object({
              all_destinations = optional(bool)
            }))
            workspace_api = optional(object({
              excluded_scopes = optional(list(string))
              scope_qualifier = optional(string)
              scopes          = optional(list(string))
            }))
            workspace_ui = optional(object({
              all_destinations = optional(bool)
            }))
          }))
          label = optional(string)
          origin = optional(object({
            all_ip_ranges = optional(bool)
            excluded_ip_ranges = optional(object({
              ip_ranges = optional(list(string))
            }))
            included_ip_ranges = optional(object({
              ip_ranges = optional(list(string))
            }))
          }))
        })))
        restriction_mode = string
      }))
    }))
    network_policy_id = optional(string)
  }))
}

