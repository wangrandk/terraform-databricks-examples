variable "environment" {
  description = "The environment tag for resources."
  type        = string
  default     = "dev"
  validation {
    condition     = contains(["dev", "prd"], var.environment)
    error_message = "environment must be either 'dev' or 'prd'"
  }
}
variable "resource_group_name" {
  description = "The name of the resource group for the Databricks workspace."
  type        = string
}

variable "location" {
  description = "The Azure region for the Databricks workspace."
  type        = string
}
# The Azure resource ID for the Databricks workspace where Unity Catalog will be deployed. It should be of the format /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Databricks/workspaces/workspace1. To find the resource ID, navigate to your Databricks workspace in the Azure portal, select the JSON View link on the Overview page.
# variable "databricks_resource_id" {
#   description = "The Azure resource ID for the databricks workspace deployment. This is where unity catalog will be deployed"
# }
variable "account_id" {
  description = "Azure databricks account id"
}
variable "aad_groups" {
  description = "List of AAD groups that you want to add to Databricks account"
  type        = list(string)
}
variable "managed_resource_group_name" {
  type        = string
  description = "(Optional) The name of the resource group where Azure should place the managed Databricks resources"
  default     = ""
}
variable "databricks_workspace_name" {
  type        = string
  description = "Name of Databricks workspace"
}
# variable "key_vault_name" {
#   type        = string
#   description = "The name of the Azure Key Vault to deploy. Won't be created if not specified"
#   default     = ""
# }

variable "subscription_id" {
  description = "Azure subscription ID"
  type        = string
}
variable "metastore_name" {
  description = "Name of unity catalog metastore"
  type        = string
}