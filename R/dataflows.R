#' Deletes a dataflow from the CDS for Analytics storage, including its definition file and actual model.Required scope: Dataflow.ReadWrite.All 
#' @param dataflowId The dataflow id
#' @param groupId The workspace id 
#' @return A `data.frame` object.
delete_dataflow <- function(token, dataflowId, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/dataflows/{dataflowId}"
  httr::DELETE(glue::glue(path), config(token = token))
}

#' Exports the specified dataflow definition to a .json file.Required scope: Dataflow.ReadWrite.All or Dataflow.Read.All 
#' @param dataflowId The dataflow id
#' @param groupId The workspace id 
#' @return A `data.frame` object.
get_dataflow <- function(token, dataflowId, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/dataflows/{dataflowId}"
  httr::GET(glue::glue(path), config(token = token))
}

#' Returns a list of datasources for the specified dataflow.Required scope: Dataflow.ReadWrite.All or Dataflow.Read.All 
#' @param dataflowId The dataflow id
#' @param groupId The workspace id 
#' @return A `data.frame` object.
get_dataflow_data_sources <- function(token, dataflowId, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/dataflows/{dataflowId}/datasources"
  httr::GET(glue::glue(path), config(token = token))
}

#' Returns a list of all dataflows from the specified workspace.Required scope: Dataflow.ReadWrite.All or Dataflow.Read.All 
#' @param groupId The workspace id 
#' @return A `data.frame` object.
get_dataflows <- function(token, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/dataflows"
  httr::GET(glue::glue(path), config(token = token))
}

#' Returns a list of upstream dataflows for the specified dataflow.Required scope: Dataflow.ReadWrite.All or Dataflow.Read.AllTo set the permissions scope, see Register an app. 
#' @param dataflowId The dataflow id
#' @param groupId The workspace id 
#' @return A `data.frame` object.
get_upstream_dataflows_in_group <- function(token, dataflowId, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/dataflows/{dataflowId}/upstreamDataflows"
  httr::GET(glue::glue(path), config(token = token))
}

#' Triggers a refresh for the specified dataflow.Required scope: Dataflow.ReadWrite.All 
#' @param dataflowId The dataflow id
#' @param groupId The workspace id 
#' @return A `data.frame` object.
refresh_dataflow <- function(token, dataflowId, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/dataflows/{dataflowId}/refreshes"
  httr::POST(glue::glue(path), config(token = token))
}

#' Creates or updates the specified dataflow refresh schedule configuration.Required scope: Dataflow.ReadWrite.All 
#' @param dataflowId The dataflow id
#' @param groupId The workspace id 
#' @return A `data.frame` object.
update_refresh_schedule <- function(token, dataflowId, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/dataflows/{dataflowId}/refreshSchedule"
  httr::PATCH(glue::glue(path), config(token = token))
}
