#' Deletes a dataflow from the CDS for Analytics storage, including its definition file and actual model.Required scope: Dataflow.ReadWrite.All 
#' @param dataflowId The dataflow id
#' @param groupId The workspace id 
#' @return A `data.frame` object. 
#' @export
delete_dataflow <- function(token, dataflowId, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/dataflows/{dataflowId}"
  response <- httr::DELETE(glue::glue(path), httr::config(token = token))
  content <- jsonlite::fromJSON(
    httr::content(response, type = "text", encoding = "UTF-8")
  )
  content$value
}

#' Exports the specified dataflow definition to a .json file.Required scope: Dataflow.ReadWrite.All or Dataflow.Read.All 
#' @param dataflowId The dataflow id
#' @param groupId The workspace id 
#' @return A `data.frame` object. 
#' @export
get_dataflow <- function(token, dataflowId, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/dataflows/{dataflowId}"
  response <- httr::GET(glue::glue(path), httr::config(token = token))
  content <- jsonlite::fromJSON(
    httr::content(response, type = "text", encoding = "UTF-8")
  )
  content$value
}

#' Returns a list of datasources for the specified dataflow.Required scope: Dataflow.ReadWrite.All or Dataflow.Read.All 
#' @param dataflowId The dataflow id
#' @param groupId The workspace id 
#' @return A `data.frame` object. 
#' @export
get_dataflow_data_sources <- function(token, dataflowId, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/dataflows/{dataflowId}/datasources"
  response <- httr::GET(glue::glue(path), httr::config(token = token))
  content <- jsonlite::fromJSON(
    httr::content(response, type = "text", encoding = "UTF-8")
  )
  content$value
}

#' Returns a list of all dataflows from the specified workspace.Required scope: Dataflow.ReadWrite.All or Dataflow.Read.All 
#' @param groupId The workspace id 
#' @return A `data.frame` object. 
#' @export
get_dataflows <- function(token, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/dataflows"
  response <- httr::GET(glue::glue(path), httr::config(token = token))
  content <- jsonlite::fromJSON(
    httr::content(response, type = "text", encoding = "UTF-8")
  )
  content$value
}

#' Returns a list of upstream dataflows for the specified dataflow.Required scope: Dataflow.ReadWrite.All or Dataflow.Read.AllTo set the permissions scope, see Register an app. 
#' @param dataflowId The dataflow id
#' @param groupId The workspace id 
#' @return A `data.frame` object. 
#' @export
get_upstream_dataflows_in_group <- function(token, dataflowId, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/dataflows/{dataflowId}/upstreamDataflows"
  response <- httr::GET(glue::glue(path), httr::config(token = token))
  content <- jsonlite::fromJSON(
    httr::content(response, type = "text", encoding = "UTF-8")
  )
  content$value
}

#' Triggers a refresh for the specified dataflow.Required scope: Dataflow.ReadWrite.All 
#' @param dataflowId The dataflow id
#' @param groupId The workspace id 
#' @return A `data.frame` object. 
#' @export
refresh_dataflow <- function(token, dataflowId, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/dataflows/{dataflowId}/refreshes"
  response <- httr::POST(glue::glue(path), httr::config(token = token))
  content <- jsonlite::fromJSON(
    httr::content(response, type = "text", encoding = "UTF-8")
  )
  content$value
}

#' Creates or updates the specified dataflow refresh schedule configuration.Required scope: Dataflow.ReadWrite.All 
#' @param dataflowId The dataflow id
#' @param groupId The workspace id 
#' @return A `data.frame` object. 
#' @export
update_refresh_schedule <- function(token, dataflowId, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/dataflows/{dataflowId}/refreshSchedule"
  response <- httr::PATCH(glue::glue(path), httr::config(token = token))
  content <- jsonlite::fromJSON(
    httr::content(response, type = "text", encoding = "UTF-8")
  )
  content$value
}
