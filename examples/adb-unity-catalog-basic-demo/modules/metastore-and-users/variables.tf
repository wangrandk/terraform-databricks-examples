variable "databricks_workspace_host" {
  description = "Workspace URL for the Databricks workspace."
  type        = string
}

variable "databricks_workspace_id" {
  description = "Workspace ID for the Databricks workspace."
  type        = string
}
variable "subscription_id" {
  description = "Azure subscription id"
}
variable "databricks_workspace_name" {
  description = "Azure databricks workspace name"
}
variable "resource_group" {
  description = "Azure resource group"
}
variable "aad_groups" {
  description = "List of AAD groups that you want to add to Databricks account"
  type        = list(string)
}
variable "account_id" {
  description = "Azure databricks account id"
}
variable "prefix" {
  description = "Prefix to be used with resouce names"
}
variable "metastore_name" {
  description = "Name of unity catalog metastore"
  type        = string
}

