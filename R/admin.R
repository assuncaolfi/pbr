#' Adds an encryption key for Power BI workspaces assigned to a capacity.Note: The user must have administrator rights (such as Office 365 Global Administrator or Power BI Service Administrator) to call this API. This API allows 600 requests per hour at maximum. Required scope: Tenant.Read.All or Tenant.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
add_power_bi_encryption_key <- function(token, activate, isDefault, keyVaultKeyIdentifier, name, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/admin/tenantKeys"
  response <- httr::POST(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = list(activate = activate, isDefault = isDefault, keyVaultKeyIdentifier = keyVaultKeyIdentifier, name = name))
  process(response, output)
}

#' Assigns the provided workspaces to the specified capacity.Note: The user must have administrator rights (such as Office 365 Global Administrator or Power BI Service Administrator) to call this API. Required scope: Tenant.Read.All or Tenant.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
capacities_assignworkspacestocapacity <- function(token, capacityMigrationAssignments, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/admin/capacities/AssignWorkspaces"
  response <- httr::POST(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = list(capacityMigrationAssignments = capacityMigrationAssignments))
  process(response, output)
}

#' Unassigns the provided workspaces from capacity.Note: The user must have administrator rights (such as Office 365 Global Administrator or Power BI Service Administrator) to call this API. Required scope: Tenant.Read.All or Tenant.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
capacities_unassignworkspacesfromcapacity <- function(token, workspacesToUnassign, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/admin/capacities/UnassignWorkspaces"
  response <- httr::POST(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = list(workspacesToUnassign = workspacesToUnassign))
  process(response, output)
}

#' Returns a list of dashboards for the organization.Note: The user must have administrator rights (such as Office 365 Global Administrator or Power BI Service Administrator) to call this API. This API allows 200 requests per hour at maximum. Required scope: Tenant.Read.All or Tenant.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
dashboards_getdashboardsasadmin <- function(token, expand = NULL, filter = NULL, skip = NULL, top = NULL, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/admin/dashboards"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns a list of dashboards from the specified workspace.Note: The user must have administrator rights (such as Office 365 Global Administrator or Power BI Service Administrator) to call this API. This API allows 200 requests per hour at maximum. Required scope: Tenant.Read.All or Tenant.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
dashboards_getdashboardsingroupasadmin <- function(token, groupId, filter, skip, top, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/admin/groups/{groupId}/dashboards"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns a list of tiles within the specified dashboard.Note: The user must have administrator rights (such as Office 365 Global Administrator or Power BI Service Administrator) to call this API. This API allows 200 requests per hour at maximum. Required scope: Tenant.Read.All or Tenant.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
dashboards_gettilesasadmin <- function(token, dashboardId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/admin/dashboards/{dashboardId}/tiles"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Exports the specified dataflow definition to a .json file.Note: The user must have administrator rights (such as Office 365 Global Administrator or Power BI Service Administrator) to call this API. Required scope: Tenant.Read.AllApplication only and delegated permissions are supported.To set the permissions scope, see Register an app. 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
dataflows_exportdataflowasadmin <- function(token, dataflowId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/admin/dataflows/{dataflowId}/export"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns a list of datasources for the specified dataflow.Note: The user must have administrator rights (such as Office 365 Global Administrator or Power BI Service Administrator) to call this API. Required scope: Tenant.Read.AllApplication only and delegated permissions are supported.To set the permissions scope, see Register an app. 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
dataflows_getdataflowdatasourcesasadmin <- function(token, dataflowId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/admin/dataflows/{dataflowId}/datasources"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns a list of dataflows for the organization.Note: The user must have administrator rights (such as Office 365 Global Administrator or Power BI Service Administrator) to call this API. Required scope: Tenant.Read.All or Tenant.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
dataflows_getdataflowsasadmin <- function(token, filter = NULL, skip = NULL, top = NULL, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/admin/dataflows"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns a list of dataflows from the specified workspace.Note: The user must have administrator rights (such as Office 365 Global Administrator or Power BI Service Administrator) to call this API. Required scope: Tenant.Read.All or Tenant.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
dataflows_getdataflowsingroupasadmin <- function(token, groupId, filter, skip, top, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/admin/groups/{groupId}/dataflows"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns a list of upstream dataflows for the specified dataflow.Note: The user must have administrator rights (such as Office 365 Global Administrator or Power BI Service Administrator) to call this API. Required scope: Tenant.Read.All or Tenant.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
dataflows_getupstreamdataflowsingroupasadmin <- function(token, dataflowId, groupId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/admin/groups/{groupId}/dataflows/{dataflowId}/upstreamDataflows"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns a list of datasets for the organization.Note: The user must have administrator rights (such as Office 365 Global Administrator or Power BI Service Administrator) to call this API. This API processes each request for 2 seconds, in the mean time other requests will be queued. Required scope: Tenant.Read.All or Tenant.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
datasets_getdatasetsasadmin <- function(token, filter = NULL, skip = NULL, top = NULL, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/admin/datasets"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns a list of datasets from the specified workspace.Note: The user must have administrator rights (such as Office 365 Global Administrator or Power BI Service Administrator) to call this API. This API allows 200 requests per hour at maximum. Required scope: Tenant.Read.All or Tenant.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
datasets_getdatasetsingroupasadmin <- function(token, groupId, expand, filter, skip, top, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/admin/groups/{groupId}/datasets"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns a list of upstream dataflows for datasets from the specified workspace.Note: The user must have administrator rights (such as Office 365 Global Administrator or Power BI Service Administrator) to call this API. Required scope: Tenant.Read.All or Tenant.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
datasets_getdatasettodataflowslinksingroupasadmin <- function(token, groupId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/admin/groups/{groupId}/datasets/upstreamDataflows"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns a list of datasources for the specified dataset.Note: The user must have administrator rights (such as Office 365 Global Administrator or Power BI Service Administrator) to call this API. This API processes each request for 0.5 seconds, in the mean time other requests  will be queued. Required scope: Tenant.Read.AllApplication only and delegated permissions are supported.To set the permissions scope, see Register an app. 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
datasets_getdatasourcesasadmin <- function(token, datasetId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/admin/datasets/{datasetId}/datasources"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns a list of audit activity events for a tenant.Note: The user must have administrator rights (such as Office 365 Global Administrator or Power BI Service Administrator) to call this API. This API allows 200 requests per hour at maximum. Required scope: Tenant.Read.All or Tenant.ReadWrite.All. To call this API, provide either a continuation token or both a start and end date time. StartDateTime and EndDateTime must be in the same UTC day. 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
get_activity_events <- function(token, filter = NULL, continuationToken = NULL, endDateTime = NULL, startDateTime = NULL, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/admin/activityevents"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns a list of capacities for the organization.Note: The user must have administrator rights (such as Office 365 Global Administrator or Power BI Service Administrator) to call this API. Required scope: Tenant.Read.All or Tenant.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
get_capacities_as_admin <- function(token, expand = NULL, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/admin/capacities"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns the encryption keys for the tenant.Note: The user must have administrator rights (such as Office 365 Global Administrator or Power BI Service Administrator) to call this API. Required scope: Tenant.Read.All or Tenant.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
get_power_bi_encryption_keys <- function(token, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/admin/tenantKeys"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Grants user permissions to the specified workspace.Note: This API is currently limited to updating workspaces in the new workspace experience. The user must have administrator rights (such as Office 365 Global Administrator or Power BI Service Administrator) to call this API. This API allows 200 requests per hour at maximum. Required scope: Tenant.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
groups_adduserasadmin <- function(token, groupId, displayName, emailAddress, groupUserAccessRight, identifier, principalType, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/admin/groups/{groupId}/users"
  response <- httr::POST(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = list(displayName = displayName, emailAddress = emailAddress, groupUserAccessRight = groupUserAccessRight, identifier = identifier, principalType = principalType))
  process(response, output)
}

#' Removes user permissions to the specified workspace.Note: This API is currently limited to updating workspaces in the new workspace experience. The user must have administrator rights (such as Office 365 Global Administrator or Power BI Service Administrator) to call this API. This API allows 200 requests per hour at maximum. Required scope: Tenant.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
groups_deleteuserasadmin <- function(token, groupId, user, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/admin/groups/{groupId}/users/{user}"
  response <- httr::DELETE(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns a list of workspaces for the organization.Note: The user must have administrator rights (such as Office 365 Global Administrator or Power BI Service Administrator) to call this API. This API allows 200 requests per hour at maximum. Required scope: Tenant.Read.All or Tenant.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
groups_getgroupsasadmin <- function(token, expand, filter, skip, top, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/admin/groups?$top={$top}"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Restores a deleted workspace.Note: This API is currently limited to restoring workspaces in the new workspace experience. The user must have administrator rights (such as Office 365 Global Administrator or Power BI Service Administrator) to call this API. This API allows 200 requests per hour at maximum. This API allows 200 requests per hour at maximum. Required scope: Tenant.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
groups_restoredeletedgroupasadmin <- function(token, groupId, emailAddress, name, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/admin/groups/{groupId}/restore"
  response <- httr::POST(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = list(emailAddress = emailAddress, name = name))
  process(response, output)
}

#' Updates the specified workspace properties.Note: This API is currently limited to updating workspaces in the new workspace experience. Only name and description can be updated, and name must be unique inside an organization. The user must have administrator rights (such as Office 365 Global Administrator or Power BI Service Administrator) to call this API. This API allows 200 requests per hour at maximum. Required scope: Tenant.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
groups_updategroupasadmin <- function(token, groupId, capacityId, dashboards, dataflowStorageId, dataflows, datasets, description, id, isOnDedicatedCapacity, isReadOnly, name, reports, state, type, users, workbooks, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/admin/groups/{groupId}"
  response <- httr::PATCH(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = list(capacityId = capacityId, dashboards = dashboards, dataflowStorageId = dataflowStorageId, dataflows = dataflows, datasets = datasets, description = description, id = id, isOnDedicatedCapacity = isOnDedicatedCapacity, isReadOnly = isReadOnly, name = name, reports = reports, state = state, type = type, users = users, workbooks = workbooks))
  process(response, output)
}

#' Returns a list of imports for the organization.Note: The user must have administrator rights (such as Office 365 Global Administrator or Power BI Service Administrator) to call this API. Required scope: Tenant.Read.All or Tenant.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
imports_getimportsasadmin <- function(token, expand = NULL, filter = NULL, skip = NULL, top = NULL, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/admin/imports"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Changes the specific capacity information. Currently, only supports changing the capacity encryption keyNote: The user must have administrator rights (such as Office 365 Global Administrator or Power BI Service Administrator) to call this API. Required scope: Tenant.Read.All or Tenant.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
patch_capacity_as_admin <- function(token, capacityId, tenantKeyId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/admin/capacities/{capacityId}"
  response <- httr::PATCH(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = list(tenantKeyId = tenantKeyId))
  process(response, output)
}

#' Returns a list of reports for the organization.Note: The user must have administrator rights (such as Office 365 Global Administrator or Power BI Service Administrator) to call this API. Required scope: Tenant.Read.All or Tenant.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
reports_getreportsasadmin <- function(token, filter = NULL, skip = NULL, top = NULL, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/admin/reports"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns a list of reports from the specified workspace.Note: The user must have administrator rights (such as Office 365 Global Administrator or Power BI Service Administrator) to call this API. This API allows 200 requests per hour at maximum. Required scope: Tenant.Read.All or Tenant.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
reports_getreportsingroupasadmin <- function(token, groupId, filter, skip, top, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/admin/groups/{groupId}/reports"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Rotate the encryption key for Power BI workspaces assigned to a capacity.Note: The user must have administrator rights (such as Office 365 Global Administrator or Power BI Service Administrator) to call this API. This API allows 600 requests per hour at maximum. Required scope: Tenant.Read.All or Tenant.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
rotate_power_bi_encryption_key <- function(token, tenantKeyId, keyVaultKeyIdentifier, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/admin/tenantKeys/{tenantKeyId}/Default.Rotate"
  response <- httr::POST(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = list(keyVaultKeyIdentifier = keyVaultKeyIdentifier))
  process(response, output)
}
