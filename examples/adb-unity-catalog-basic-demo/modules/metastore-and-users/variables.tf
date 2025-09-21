
# Azure Resource Variables
variable "subscription_id" {
  description = "Azure subscription ID."
  type        = string
}
variable "resource_group" {
  description = "Azure resource group name."
  type        = string
}

# Databricks Workspace Variables
variable "databricks_workspace_name" {
  description = "Databricks workspace name."
  type        = string
}
variable "databricks_workspace_host" {
  description = "Workspace URL for the Databricks workspace."
  type        = string
}
variable "databricks_workspace_id" {
  description = "Workspace ID for the Databricks workspace."
  type        = string
}

# Databricks Account Variables
variable "account_id" {
  description = "Azure Databricks account ID."
  type        = string
}
variable "metastore_name" {
  description = "Name of Unity Catalog metastore."
  type        = string
}
variable "prefix" {
  description = "Prefix to be used with resource names."
  type        = string
}

# Azure AD Groups
variable "aad_groups" {
  description = "List of Azure AD groups to add to Databricks account."
  type        = list(string)
}

