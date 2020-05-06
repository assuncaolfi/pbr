#' Binds the specified dataset from "My Workspace" to the specified gateway with (optional) given set of datasource Ids. This only supports the On-Premises Data Gateway.Required scope: Dataset.ReadWrite.All 
#' @param datasetId The dataset id 
#' @return A `data.frame` object. 
#' @export
bind_to_gateway <- function(token, datasetId) {
  path <- "https://api.powerbi.com/v1.0/myorg/datasets/{datasetId}/Default.BindToGateway"
  httr::POST(glue::glue(path), httr::config(token = token))
}

#' Binds the specified dataset from the specified workspace to the specified gateway with (optional) given set of datasource Ids. This only supports the On-Premises Data Gateway.Required scope: Dataset.ReadWrite.All 
#' @param datasetId The dataset id
#' @param groupId The workspace id 
#' @return A `data.frame` object. 
#' @export
bind_to_gateway_in_group <- function(token, datasetId, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/datasets/{datasetId}/Default.BindToGateway"
  httr::POST(glue::glue(path), httr::config(token = token))
}

#' Deletes the specified dataset from "My Workspace".Required scope: Dataset.ReadWrite.All 
#' @param datasetId The dataset id 
#' @return A `data.frame` object. 
#' @export
delete_dataset <- function(token, datasetId) {
  path <- "https://api.powerbi.com/v1.0/myorg/datasets/{datasetId}"
  httr::DELETE(glue::glue(path), httr::config(token = token))
}

#' Deletes the specified dataset from the specified workspace.Required scope: Dataset.ReadWrite.All 
#' @param datasetId The dataset id
#' @param groupId The workspace id 
#' @return A `data.frame` object. 
#' @export
delete_dataset_in_group <- function(token, datasetId, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/datasets/{datasetId}"
  httr::DELETE(glue::glue(path), httr::config(token = token))
}

#' Returns a list of gateways which the specified dataset from "My Workspace" can be bound to.
#' This API is relevant only for datasets that have at least one on-premises connection. For datasets with cloud-only connections, it will return an empty list. Required scope: Dataset.Read.All 
#' @param datasetId The dataset id 
#' @return A `data.frame` object. 
#' @export
discover_gateways <- function(token, datasetId) {
  path <- "https://api.powerbi.com/v1.0/myorg/datasets/{datasetId}/Default.DiscoverGateways"
  httr::GET(glue::glue(path), httr::config(token = token))
}

#' Returns a list of gateways that the specified dataset from the specified workspace can be bound to.
#' This API is relevant only for datasets that have at least one on-premises connection. For datasets with cloud-only connections, it will return an empty list. Required scope: Dataset.Read.All 
#' @param datasetId The dataset id
#' @param groupId The workspace id 
#' @return A `data.frame` object. 
#' @export
discover_gateways_in_group <- function(token, datasetId, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/datasets/{datasetId}/Default.DiscoverGateways"
  httr::GET(glue::glue(path), httr::config(token = token))
}

#' Returns the specified dataset from "My Workspace".Required scope: Dataset.ReadWrite.All or Dataset.Read.All 
#' @param datasetId The dataset id 
#' @return A `data.frame` object. 
#' @export
get_dataset <- function(token, datasetId) {
  path <- "https://api.powerbi.com/v1.0/myorg/datasets/{datasetId}"
  httr::GET(glue::glue(path), httr::config(token = token))
}

#' Returns the specified dataset from the specified workspace.Required scope: Dataset.ReadWrite.All or Dataset.Read.All 
#' @param datasetId The dataset id
#' @param groupId The workspace id 
#' @return A `data.frame` object. 
#' @export
get_dataset_in_group <- function(token, datasetId, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/datasets/{datasetId}"
  httr::GET(glue::glue(path), httr::config(token = token))
}

#' Returns a list of datasets from "My Workspace".Required scope: Dataset.ReadWrite.All or Dataset.Read.All 
#' @param  OK 
#' @return A `data.frame` object. 
#' @export
get_datasets <- function(token) {
  path <- "https://api.powerbi.com/v1.0/myorg/datasets"
  httr::GET(glue::glue(path), httr::config(token = token))
}

#' Returns a list of datasets from the specified workspace.Required scope: Dataset.ReadWrite.All or Dataset.Read.All 
#' @param groupId The workspace id 
#' @return A `data.frame` object. 
#' @export
get_datasets_in_group <- function(token, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/datasets"
  httr::GET(glue::glue(path), httr::config(token = token))
}

#' Returns a list of upstream dataflows for datasets from the specified workspace.Required scope: Dataset.ReadWrite.All or Dataset.Read.All 
#' @param groupId The workspace id 
#' @return A `data.frame` object. 
#' @export
get_dataset_to_dataflows_links_in_group <- function(token, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/datasets/upstreamDataflows"
  httr::GET(glue::glue(path), httr::config(token = token))
}

#' Returns a list of datasources for the specified dataset from "My Workspace".Required scope: Dataset.ReadWrite.All or Dataset.Read.All 
#' @param datasetId The dataset id 
#' @return A `data.frame` object. 
#' @export
get_datasources <- function(token, datasetId) {
  path <- "https://api.powerbi.com/v1.0/myorg/datasets/{datasetId}/datasources"
  httr::GET(glue::glue(path), httr::config(token = token))
}

#' Returns a list of datasources for the specified dataset from the specified workspace.Required scope: Dataset.ReadWrite.All or Dataset.Read.All 
#' @param datasetId 
#' @param groupId The workspace id 
#' @return A `data.frame` object. 
#' @export
get_datasources_in_group <- function(token, datasetId, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/datasets/{datasetId}/datasources"
  httr::GET(glue::glue(path), httr::config(token = token))
}

#' Returns the refresh schedule of a specified DirectQuery or LiveConnection dataset from "My Workspace".Required scope: Dataset.ReadWrite.All or Dataset.Read.All 
#' @param datasetId The dataset id 
#' @return A `data.frame` object. 
#' @export
get_direct_query_refresh_schedule <- function(token, datasetId) {
  path <- "https://api.powerbi.com/v1.0/myorg/datasets/{datasetId}/directQueryRefreshSchedule"
  httr::GET(glue::glue(path), httr::config(token = token))
}

#' Returns the refresh schedule of a specified DirectQuery or LiveConnection dataset from the specified workspace.Required scope: Dataset.ReadWrite.All or Dataset.Read.All 
#' @param datasetId The dataset id
#' @param groupId The workspace id 
#' @return A `data.frame` object. 
#' @export
get_direct_query_refresh_schedule_in_group <- function(token, datasetId, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/datasets/{datasetId}/directQueryRefreshSchedule"
  httr::GET(glue::glue(path), httr::config(token = token))
}

#' Returns a list of gateway datasources for the specified dataset from "My Workspace".Note: Use the new Dataset - Get Datasources API instead.Required scope: Dataset.ReadWrite.All or Dataset.Read.All 
#' @param datasetId The dataset id 
#' @return A `data.frame` object. 
#' @export
get_gateway_datasources <- function(token, datasetId) {
  path <- "https://api.powerbi.com/v1.0/myorg/datasets/{datasetId}/Default.GetBoundGatewayDatasources"
  httr::GET(glue::glue(path), httr::config(token = token))
}

#' Returns a list of gateway datasources for the specified dataset from the specified workspace.Note: Use the Dataset - Get Datasources In Group API instead.Required scope: Dataset.ReadWrite.All or Dataset.Read.All 
#' @param datasetId The dataset id
#' @param groupId The workspace id 
#' @return A `data.frame` object. 
#' @export
get_gateway_datasources_in_group <- function(token, datasetId, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/datasets/{datasetId}/Default.GetBoundGatewayDatasources"
  httr::GET(glue::glue(path), httr::config(token = token))
}

#' Returns a list of parameters for the specified dataset from "My Workspace".Required scope: Dataset.ReadWrite.All 
#' @param datasetId The dataset id 
#' @return A `data.frame` object. 
#' @export
get_parameters <- function(token, datasetId) {
  path <- "https://api.powerbi.com/v1.0/myorg/datasets/{datasetId}/parameters"
  httr::GET(glue::glue(path), httr::config(token = token))
}

#' Returns a list of parameters for the specified dataset from the specified workspace.Required scope: Dataset.ReadWrite.All 
#' @param datasetId 
#' @param groupId The workspace id 
#' @return A `data.frame` object. 
#' @export
get_parameters_in_group <- function(token, datasetId, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/datasets/{datasetId}/parameters"
  httr::GET(glue::glue(path), httr::config(token = token))
}

#' Returns the refresh history of the specified dataset from "My Workspace".Required scope: Dataset.ReadWrite.All or Dataset.Read.All 
#' @param datasetId The dataset id
#' @param datasetId The requested number of entries in the refresh history. If not provided, the default is all available entries. 
#' @return A `data.frame` object. 
#' @export
get_refresh_history <- function(token, datasetId) {
  path <- "https://api.powerbi.com/v1.0/myorg/datasets/{datasetId}/refreshes"
  httr::GET(glue::glue(path), httr::config(token = token))
}

#' Returns the refresh history of the specified dataset from the specified workspace.Required scope: Dataset.ReadWrite.All or Dataset.Read.All 
#' @param datasetId The dataset id
#' @param groupId The workspace id
#' @param datasetId The requested number of entries in the refresh history. If not provided, the default is all available entries. 
#' @return A `data.frame` object. 
#' @export
get_refresh_history_in_group <- function(token, datasetId, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/datasets/{datasetId}/refreshes"
  httr::GET(glue::glue(path), httr::config(token = token))
}

#' Returns the refresh schedule of the specified dataset from "My Workspace".Required scope: Dataset.ReadWrite.All or Dataset.Read.All 
#' @param datasetId The dataset id 
#' @return A `data.frame` object. 
#' @export
get_refresh_schedule <- function(token, datasetId) {
  path <- "https://api.powerbi.com/v1.0/myorg/datasets/{datasetId}/refreshSchedule"
  httr::GET(glue::glue(path), httr::config(token = token))
}

#' Returns the refresh schedule of the specified dataset from the specified workspace.Required scope: Dataset.ReadWrite.All or Dataset.Read.All 
#' @param datasetId The dataset id
#' @param groupId The workspace id 
#' @return A `data.frame` object. 
#' @export
get_refresh_schedule_in_group <- function(token, datasetId, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/datasets/{datasetId}/refreshSchedule"
  httr::GET(glue::glue(path), httr::config(token = token))
}

#' Triggers a refresh for the specified dataset from "My Workspace".In Shared capacities this call is limited to eight times per day (including refreshes executed via Scheduled Refresh)In Premium capacities this call is not limited in number of times per day, but only by the available resources in the capacity, hence if overloaded, the refresh execution may be throttled until the load is reduced. If this throttling exceeds 1 hour, the refresh will fail.Required scope: Dataset.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param datasetId The dataset id 
#' @return A `data.frame` object. 
#' @export
refresh_dataset <- function(token, datasetId) {
  path <- "https://api.powerbi.com/v1.0/myorg/datasets/{datasetId}/refreshes"
  httr::POST(glue::glue(path), httr::config(token = token))
}

#' Triggers a refresh for the specified dataset from the specified workspace.In Shared capacities this call is limited to eight times per day (including refreshes executed via Scheduled Refresh)In Premium capacities this call is not limited in number of times per day, but only by the available resources in the capacity, hence if overloaded, the refresh execution may be throttled until the load is reduced. If this throttling exceeds 1 hour, the refresh will fail.Required scope: Dataset.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param datasetId The dataset id
#' @param groupId The workspace id 
#' @return A `data.frame` object. 
#' @export
refresh_dataset_in_group <- function(token, datasetId, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/datasets/{datasetId}/refreshes"
  httr::POST(glue::glue(path), httr::config(token = token))
}

#' Note: This API is deprecated and no longer supported.Updates all connections for the specified dataset from "My Workspace".Notes: 
#' @param datasetId The dataset id 
#' @return A `data.frame` object. 
#' @export
set_all_dataset_connections <- function(token, datasetId) {
  path <- "https://api.powerbi.com/v1.0/myorg/datasets/{datasetId}/Default.SetAllConnections"
  httr::POST(glue::glue(path), httr::config(token = token))
}

#' Note: This API is deprecated and no longer supported.Updates all connections for the specified dataset from the specified workspace.Notes: 
#' @param datasetId The dataset id
#' @param groupId The workspace id 
#' @return A `data.frame` object. 
#' @export
set_all_dataset_connections_in_group <- function(token, datasetId, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/datasets/{datasetId}/Default.SetAllConnections"
  httr::POST(glue::glue(path), httr::config(token = token))
}

#' Transfers ownership over the specified dataset to the current authorized user.Required scope: Dataset.ReadWrite.All 
#' @param datasetId The dataset id
#' @param groupId The workspace id 
#' @return A `data.frame` object. 
#' @export
take_over_in_group <- function(token, datasetId, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/datasets/{datasetId}/Default.TakeOver"
  httr::POST(glue::glue(path), httr::config(token = token))
}

#' Updates the datasources of the specified dataset from "My Workspace".Important: 
#' @param datasetId The dataset id 
#' @return A `data.frame` object. 
#' @export
update_datasources <- function(token, datasetId) {
  path <- "https://api.powerbi.com/v1.0/myorg/datasets/{datasetId}/Default.UpdateDatasources"
  httr::POST(glue::glue(path), httr::config(token = token))
}

#' Updates the datasources of the specified dataset from the specified workspace.Important: 
#' @param datasetId 
#' @param groupId The workspace id 
#' @return A `data.frame` object. 
#' @export
update_datasources_in_group <- function(token, datasetId, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/datasets/{datasetId}/Default.UpdateDatasources"
  httr::POST(glue::glue(path), httr::config(token = token))
}

#' Updates the refresh schedule for the specified DirectQuery or LiveConnection dataset from "My Workspace".This operation is only supported for the dataset owner.A request should contain either a combination of days and times  (setting times is optional, otherwise a default single time per day is used) or a valid frequency, but not both.Setting frequency will automatically truncate the days and times arrays.Required scope: Dataset.ReadWrite.All 
#' @param datasetId The dataset id 
#' @return A `data.frame` object. 
#' @export
update_direct_query_refresh_schedule <- function(token, datasetId) {
  path <- "https://api.powerbi.com/v1.0/myorg/datasets/{datasetId}/directQueryRefreshSchedule"
  httr::PATCH(glue::glue(path), httr::config(token = token))
}

#' Updates the refresh schedule for the specified DirectQuery or LiveConnection dataset from the specified workspace.This operation is only supported for the dataset owner.A request should contain either a combination of days and times  (setting times is optional, otherwise a default single time per day is used) or a valid frequency, but not both.Setting frequency will automatically truncate the days and times arrays.Required scope: Dataset.ReadWrite.All 
#' @param datasetId The dataset id
#' @param groupId The workspace id 
#' @return A `data.frame` object. 
#' @export
update_direct_query_refresh_schedule_in_group <- function(token, datasetId, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/datasets/{datasetId}/directQueryRefreshSchedule"
  httr::PATCH(glue::glue(path), httr::config(token = token))
}

#' Updates the parameters values for the specified dataset from "My Workspace".Important: The dataset must be refreshed for new parameters values to be applied. Wait 30 minutes for the update parameters operation to complete before refreshing.Required scope: Dataset.ReadWrite.All  
#' @param datasetId The dataset id 
#' @return A `data.frame` object. 
#' @export
update_parameters <- function(token, datasetId) {
  path <- "https://api.powerbi.com/v1.0/myorg/datasets/{datasetId}/Default.UpdateParameters"
  httr::POST(glue::glue(path), httr::config(token = token))
}

#' Updates the parameters values for the specified dataset from the specified workspace.Important: The dataset must be refreshed for the new parameter values to be applied. Wait 30 minutes for the update parameters operation to complete before refreshing.Required scope: Dataset.ReadWrite.All  
#' @param datasetId 
#' @param groupId The workspace id 
#' @return A `data.frame` object. 
#' @export
update_parameters_in_group <- function(token, datasetId, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/datasets/{datasetId}/Default.UpdateParameters"
  httr::POST(glue::glue(path), httr::config(token = token))
}

#' Updates the refresh schedule for the specified dataset from "My Workspace".This operation is only supported for the dataset owner.A request that disables the refresh schedule should contain no other changes.The days array should not be set to empty array.The times may be set to empty array (in which case Power BI will use a default single time per day).The limit on number of time slots per day depends on the type of capacity used (Premium or Shared), see What is Microsoft Power BI Premium.Required scope: Dataset.ReadWrite.All 
#' @param datasetId The dataset id 
#' @return A `data.frame` object. 
#' @export
update_refresh_schedule <- function(token, datasetId) {
  path <- "https://api.powerbi.com/v1.0/myorg/datasets/{datasetId}/refreshSchedule"
  httr::PATCH(glue::glue(path), httr::config(token = token))
}

#' Updates the refresh schedule for the specified dataset from the specified workspace.This operation is only supported for the dataset owner.A request that disables the refresh schedule should contain no other changes.The days array should not be set to empty array.The times may be set to empty array (in which case Power BI will use a default single time per day).The limit on number of time slots per day depends on the type of capacity used (Premium or Shared), see What is Microsoft Power BI Premium.Required scope: Dataset.ReadWrite.All 
#' @param datasetId The dataset id
#' @param groupId The workspace id 
#' @return A `data.frame` object. 
#' @export
update_refresh_schedule_in_group <- function(token, datasetId, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/datasets/{datasetId}/refreshSchedule"
  httr::PATCH(glue::glue(path), httr::config(token = token))
}
