#' Adds an encryption key for Power BI workspaces assigned to a capacity.Note: The user must have administrator rights (such as Office 365 Global Administrator or Power BI Service Administrator) to call this API. This API allows 600 requests per hour at maximum. Required scope: Tenant.Read.All or Tenant.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param activate Indicates to activate any inactivated capacities to use this key for its encryption
#' @param isDefault Indicates that this key is set as default for the entire tenant. Any new capacity creation will inherit this key upon creation
#' @param keyVaultKeyIdentifier Uri to the version of the Azure Key Vault key to be used
#' @param name The name of the encryption key 
#' @return A `data.frame` object. 
#' @export
add_power_bi_encryption_key <- function(token, activate, isDefault, keyVaultKeyIdentifier, name) {
  path <- "https://api.powerbi.com/v1.0/myorg/admin/tenantKeys"
  httr::POST(glue::glue(path), httr::config(token = token))
}

#' Assigns the provided workspaces to the specified capacity.Note: The user must have administrator rights (such as Office 365 Global Administrator or Power BI Service Administrator) to call this API. Required scope: Tenant.Read.All or Tenant.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param capacityMigrationAssignments Assignment contract for migrating workspaces to shared capacity as tenant admin 
#' @return A `data.frame` object. 
#' @export
capacities_assignworkspacestocapacity <- function(token, capacityMigrationAssignments) {
  path <- "https://api.powerbi.com/v1.0/myorg/admin/capacities/AssignWorkspaces"
  httr::POST(glue::glue(path), httr::config(token = token))
}

#' Unassigns the provided workspaces from capacity.Note: The user must have administrator rights (such as Office 365 Global Administrator or Power BI Service Administrator) to call this API. Required scope: Tenant.Read.All or Tenant.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param workspacesToUnassign Workspaces to be migrated to shared capacity 
#' @return A `data.frame` object. 
#' @export
capacities_unassignworkspacesfromcapacity <- function(token, workspacesToUnassign) {
  path <- "https://api.powerbi.com/v1.0/myorg/admin/capacities/UnassignWorkspaces"
  httr::POST(glue::glue(path), httr::config(token = token))
}

#' Returns a list of dashboards for the organization.Note: The user must have administrator rights (such as Office 365 Global Administrator or Power BI Service Administrator) to call this API. This API allows 200 requests per hour at maximum. Required scope: Tenant.Read.All or Tenant.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param  Expands related entities inline, receives a comma-separated list of data types. Supported: tiles
#' @param  Filters the results, based on a boolean condition
#' @param  Skips the first n results
#' @param  Returns only the first n results 
#' @return A `data.frame` object. 
#' @export
dashboards_getdashboardsasadmin <- function(token) {
  path <- "https://api.powerbi.com/v1.0/myorg/admin/dashboards"
  httr::GET(glue::glue(path), httr::config(token = token))
}

#' Returns a list of dashboards from the specified workspace.Note: The user must have administrator rights (such as Office 365 Global Administrator or Power BI Service Administrator) to call this API. This API allows 200 requests per hour at maximum. Required scope: Tenant.Read.All or Tenant.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param groupId The workspace id
#' @param groupId Filters the results, based on a boolean condition
#' @param groupId Skips the first n results
#' @param groupId Returns only the first n results 
#' @return A `data.frame` object. 
#' @export
dashboards_getdashboardsingroupasadmin <- function(token, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/admin/groups/{groupId}/dashboards"
  httr::GET(glue::glue(path), httr::config(token = token))
}

#' Returns a list of tiles within the specified dashboard.Note: The user must have administrator rights (such as Office 365 Global Administrator or Power BI Service Administrator) to call this API. This API allows 200 requests per hour at maximum. Required scope: Tenant.Read.All or Tenant.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param dashboardId The dashboard id 
#' @return A `data.frame` object. 
#' @export
dashboards_gettilesasadmin <- function(token, dashboardId) {
  path <- "https://api.powerbi.com/v1.0/myorg/admin/dashboards/{dashboardId}/tiles"
  httr::GET(glue::glue(path), httr::config(token = token))
}

#' Exports the specified dataflow definition to a .json file.Note: The user must have administrator rights (such as Office 365 Global Administrator or Power BI Service Administrator) to call this API. Required scope: Tenant.Read.AllApplication only and delegated permissions are supported.To set the permissions scope, see Register an app. 
#' @param dataflowId The dataflow id 
#' @return A `data.frame` object. 
#' @export
dataflows_exportdataflowasadmin <- function(token, dataflowId) {
  path <- "https://api.powerbi.com/v1.0/myorg/admin/dataflows/{dataflowId}/export"
  httr::GET(glue::glue(path), httr::config(token = token))
}

#' Returns a list of datasources for the specified dataflow.Note: The user must have administrator rights (such as Office 365 Global Administrator or Power BI Service Administrator) to call this API. Required scope: Tenant.Read.AllApplication only and delegated permissions are supported.To set the permissions scope, see Register an app. 
#' @param dataflowId The dataflow id 
#' @return A `data.frame` object. 
#' @export
dataflows_getdataflowdatasourcesasadmin <- function(token, dataflowId) {
  path <- "https://api.powerbi.com/v1.0/myorg/admin/dataflows/{dataflowId}/datasources"
  httr::GET(glue::glue(path), httr::config(token = token))
}

#' Returns a list of dataflows for the organization.Note: The user must have administrator rights (such as Office 365 Global Administrator or Power BI Service Administrator) to call this API. Required scope: Tenant.Read.All or Tenant.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param  Filters the results, based on a boolean condition
#' @param  Skips the first n results
#' @param  Returns only the first n results 
#' @return A `data.frame` object. 
#' @export
dataflows_getdataflowsasadmin <- function(token) {
  path <- "https://api.powerbi.com/v1.0/myorg/admin/dataflows"
  httr::GET(glue::glue(path), httr::config(token = token))
}

#' Returns a list of dataflows from the specified workspace.Note: The user must have administrator rights (such as Office 365 Global Administrator or Power BI Service Administrator) to call this API. Required scope: Tenant.Read.All or Tenant.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param groupId The workspace id
#' @param groupId Filters the results, based on a boolean condition
#' @param groupId Skips the first n results
#' @param groupId Returns only the first n results 
#' @return A `data.frame` object. 
#' @export
dataflows_getdataflowsingroupasadmin <- function(token, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/admin/groups/{groupId}/dataflows"
  httr::GET(glue::glue(path), httr::config(token = token))
}

#' Returns a list of upstream dataflows for the specified dataflow.Note: The user must have administrator rights (such as Office 365 Global Administrator or Power BI Service Administrator) to call this API. Required scope: Tenant.Read.All or Tenant.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param dataflowId The dataflow id
#' @param groupId The workspace id 
#' @return A `data.frame` object. 
#' @export
dataflows_getupstreamdataflowsingroupasadmin <- function(token, dataflowId, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/admin/groups/{groupId}/dataflows/{dataflowId}/upstreamDataflows"
  httr::GET(glue::glue(path), httr::config(token = token))
}

#' Returns a list of datasets for the organization.Note: The user must have administrator rights (such as Office 365 Global Administrator or Power BI Service Administrator) to call this API. This API processes each request for 2 seconds, in the mean time other requests will be queued. Required scope: Tenant.Read.All or Tenant.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param  Filters the results, based on a boolean condition
#' @param  Skips the first n results
#' @param  Returns only the first n results 
#' @return A `data.frame` object. 
#' @export
datasets_getdatasetsasadmin <- function(token) {
  path <- "https://api.powerbi.com/v1.0/myorg/admin/datasets"
  httr::GET(glue::glue(path), httr::config(token = token))
}

#' Returns a list of datasets from the specified workspace.Note: The user must have administrator rights (such as Office 365 Global Administrator or Power BI Service Administrator) to call this API. This API allows 200 requests per hour at maximum. Required scope: Tenant.Read.All or Tenant.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param groupId The workspace id
#' @param groupId Expands related entities inline
#' @param groupId Filters the results, based on a boolean condition
#' @param groupId Skips the first n results
#' @param groupId Returns only the first n results 
#' @return A `data.frame` object. 
#' @export
datasets_getdatasetsingroupasadmin <- function(token, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/admin/groups/{groupId}/datasets"
  httr::GET(glue::glue(path), httr::config(token = token))
}

#' Returns a list of upstream dataflows for datasets from the specified workspace.Note: The user must have administrator rights (such as Office 365 Global Administrator or Power BI Service Administrator) to call this API. Required scope: Tenant.Read.All or Tenant.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param groupId The workspace id 
#' @return A `data.frame` object. 
#' @export
datasets_getdatasettodataflowslinksingroupasadmin <- function(token, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/admin/groups/{groupId}/datasets/upstreamDataflows"
  httr::GET(glue::glue(path), httr::config(token = token))
}

#' Returns a list of datasources for the specified dataset.Note: The user must have administrator rights (such as Office 365 Global Administrator or Power BI Service Administrator) to call this API. This API processes each request for 0.5 seconds, in the mean time other requests  will be queued. Required scope: Tenant.Read.AllApplication only and delegated permissions are supported.To set the permissions scope, see Register an app. 
#' @param datasetId NA 
#' @return A `data.frame` object. 
#' @export
datasets_getdatasourcesasadmin <- function(token, datasetId) {
  path <- "https://api.powerbi.com/v1.0/myorg/admin/datasets/{datasetId}/datasources"
  httr::GET(glue::glue(path), httr::config(token = token))
}

#' Returns a list of audit activity events for a tenant.Note: The user must have administrator rights (such as Office 365 Global Administrator or Power BI Service Administrator) to call this API. This API allows 200 requests per hour at maximum. Required scope: Tenant.Read.All or Tenant.ReadWrite.All. To call this API, provide either a continuation token or both a start and end date time. StartDateTime and EndDateTime must be in the same UTC day. 
#' @param continuationToken Filters the results based on a boolean condition, using 'Activity', 'UserId', or both properties. Supports only 'eq' and 'and' operators.
#' @param endDateTime Token required to get the next chunk of the result set
#' @param startDateTime End date and time of the window for audit event results. Must be in ISO 8601 compliant UTC format.
#' @param continuationToken Start date and time of the window for audit event results. Must be in ISO 8601 compliant UTC format. 
#' @return A `data.frame` object. 
#' @export
get_activity_events <- function(token, continuationToken, endDateTime, startDateTime) {
  path <- "https://api.powerbi.com/v1.0/myorg/admin/activityevents"
  httr::GET(glue::glue(path), httr::config(token = token))
}

#' Returns a list of capacities for the organization.Note: The user must have administrator rights (such as Office 365 Global Administrator or Power BI Service Administrator) to call this API. Required scope: Tenant.Read.All or Tenant.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param  Expands related entities inline 
#' @return A `data.frame` object. 
#' @export
get_capacities_as_admin <- function(token) {
  path <- "https://api.powerbi.com/v1.0/myorg/admin/capacities"
  httr::GET(glue::glue(path), httr::config(token = token))
}

#' Returns the encryption keys for the tenant.Note: The user must have administrator rights (such as Office 365 Global Administrator or Power BI Service Administrator) to call this API. Required scope: Tenant.Read.All or Tenant.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param  OK 
#' @return A `data.frame` object. 
#' @export
get_power_bi_encryption_keys <- function(token) {
  path <- "https://api.powerbi.com/v1.0/myorg/admin/tenantKeys"
  httr::GET(glue::glue(path), httr::config(token = token))
}

#' Grants user permissions to the specified workspace.Note: This API is currently limited to updating workspaces in the new workspace experience. The user must have administrator rights (such as Office 365 Global Administrator or Power BI Service Administrator) to call this API. This API allows 200 requests per hour at maximum. Required scope: Tenant.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param groupId The workspace id 
#' @return A `data.frame` object. 
#' @export
groups_adduserasadmin <- function(token, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/admin/groups/{groupId}/users"
  httr::POST(glue::glue(path), httr::config(token = token))
}

#' Removes user permissions to the specified workspace.Note: This API is currently limited to updating workspaces in the new workspace experience. The user must have administrator rights (such as Office 365 Global Administrator or Power BI Service Administrator) to call this API. This API allows 200 requests per hour at maximum. Required scope: Tenant.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param groupId The workspace id
#' @param user The user principal name (UPN) of the user to remove (usually the user's email) 
#' @return A `data.frame` object. 
#' @export
groups_deleteuserasadmin <- function(token, groupId, user) {
  path <- "https://api.powerbi.com/v1.0/myorg/admin/groups/{groupId}/users/{user}"
  httr::DELETE(glue::glue(path), httr::config(token = token))
}

#' Returns a list of workspaces for the organization.Note: The user must have administrator rights (such as Office 365 Global Administrator or Power BI Service Administrator) to call this API. This API allows 200 requests per hour at maximum. Required scope: Tenant.Read.All or Tenant.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param  Expands related entities inline, receives a comma-separated list of data types. Supported: users, reports, dashboards, datasets, dataflows, workbooks
#' @param  Filters the results based on a boolean condition
#' @param  Skips the first n results. Use with top to fetch results beyond the first 5000.
#' @param  Returns only the first n results. This parameter is mandatory and must be in the range of 1-5000. 
#' @return A `data.frame` object. 
#' @export
groups_getgroupsasadmin <- function(token) {
  path <- "https://api.powerbi.com/v1.0/myorg/admin/groups?$top={$top}"
  httr::GET(glue::glue(path), httr::config(token = token))
}

#' Restores a deleted workspace.Note: This API is currently limited to restoring workspaces in the new workspace experience. The user must have administrator rights (such as Office 365 Global Administrator or Power BI Service Administrator) to call this API. This API allows 200 requests per hour at maximum. This API allows 200 requests per hour at maximum. Required scope: Tenant.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param groupId The workspace id 
#' @return A `data.frame` object. 
#' @export
groups_restoredeletedgroupasadmin <- function(token, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/admin/groups/{groupId}/restore"
  httr::POST(glue::glue(path), httr::config(token = token))
}

#' Updates the specified workspace properties.Note: This API is currently limited to updating workspaces in the new workspace experience. Only name and description can be updated, and name must be unique inside an organization. The user must have administrator rights (such as Office 365 Global Administrator or Power BI Service Administrator) to call this API. This API allows 200 requests per hour at maximum. Required scope: Tenant.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param groupId The workspace id 
#' @return A `data.frame` object. 
#' @export
groups_updategroupasadmin <- function(token, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/admin/groups/{groupId}"
  httr::PATCH(glue::glue(path), httr::config(token = token))
}

#' Returns a list of imports for the organization.Note: The user must have administrator rights (such as Office 365 Global Administrator or Power BI Service Administrator) to call this API. Required scope: Tenant.Read.All or Tenant.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param  Expands related entities inline
#' @param  Filters the results, based on a boolean condition
#' @param  Skips the first n results
#' @param  Returns only the first n results 
#' @return A `data.frame` object. 
#' @export
imports_getimportsasadmin <- function(token) {
  path <- "https://api.powerbi.com/v1.0/myorg/admin/imports"
  httr::GET(glue::glue(path), httr::config(token = token))
}

#' Changes the specific capacity information. Currently, only supports changing the capacity encryption keyNote: The user must have administrator rights (such as Office 365 Global Administrator or Power BI Service Administrator) to call this API. Required scope: Tenant.Read.All or Tenant.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param capacityId The capacity Id 
#' @return A `data.frame` object. 
#' @export
patch_capacity_as_admin <- function(token, capacityId) {
  path <- "https://api.powerbi.com/v1.0/myorg/admin/capacities/{capacityId}"
  httr::PATCH(glue::glue(path), httr::config(token = token))
}

#' Returns a list of reports for the organization.Note: The user must have administrator rights (such as Office 365 Global Administrator or Power BI Service Administrator) to call this API. Required scope: Tenant.Read.All or Tenant.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param  Filters the results, based on a boolean condition
#' @param  Skips the first n results
#' @param  Returns only the first n results 
#' @return A `data.frame` object. 
#' @export
reports_getreportsasadmin <- function(token) {
  path <- "https://api.powerbi.com/v1.0/myorg/admin/reports"
  httr::GET(glue::glue(path), httr::config(token = token))
}

#' Returns a list of reports from the specified workspace.Note: The user must have administrator rights (such as Office 365 Global Administrator or Power BI Service Administrator) to call this API. This API allows 200 requests per hour at maximum. Required scope: Tenant.Read.All or Tenant.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param groupId The workspace id
#' @param groupId Filters the results, based on a boolean condition
#' @param groupId Skips the first n results
#' @param groupId Returns only the first n results 
#' @return A `data.frame` object. 
#' @export
reports_getreportsingroupasadmin <- function(token, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/admin/groups/{groupId}/reports"
  httr::GET(glue::glue(path), httr::config(token = token))
}

#' Rotate the encryption key for Power BI workspaces assigned to a capacity.Note: The user must have administrator rights (such as Office 365 Global Administrator or Power BI Service Administrator) to call this API. This API allows 600 requests per hour at maximum. Required scope: Tenant.Read.All or Tenant.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param tenantKeyId Tenant key id 
#' @return A `data.frame` object. 
#' @export
rotate_power_bi_encryption_key <- function(token, tenantKeyId) {
  path <- "https://api.powerbi.com/v1.0/myorg/admin/tenantKeys/{tenantKeyId}/Default.Rotate"
  httr::POST(glue::glue(path), httr::config(token = token))
}
