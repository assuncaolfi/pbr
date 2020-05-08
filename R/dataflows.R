#' Deletes a dataflow from the CDS for Analytics storage, including its definition file and actual model.Required scope: Dataflow.ReadWrite.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
delete_dataflow <- function(token, dataflowId, groupId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/dataflows/{dataflowId}"
  response <- httr::DELETE(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Exports the specified dataflow definition to a .json file.Required scope: Dataflow.ReadWrite.All or Dataflow.Read.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
get_dataflow <- function(token, dataflowId, groupId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/dataflows/{dataflowId}"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns a list of datasources for the specified dataflow.Required scope: Dataflow.ReadWrite.All or Dataflow.Read.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
get_dataflow_data_sources <- function(token, dataflowId, groupId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/dataflows/{dataflowId}/datasources"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns a list of all dataflows from the specified workspace.Required scope: Dataflow.ReadWrite.All or Dataflow.Read.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
get_dataflows <- function(token, groupId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/dataflows"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns a list of upstream dataflows for the specified dataflow.Required scope: Dataflow.ReadWrite.All or Dataflow.Read.AllTo set the permissions scope, see Register an app. 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
get_upstream_dataflows_in_group <- function(token, dataflowId, groupId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/dataflows/{dataflowId}/upstreamDataflows"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Triggers a refresh for the specified dataflow.Required scope: Dataflow.ReadWrite.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
refresh_dataflow <- function(token, dataflowId, groupId, notifyOption, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/dataflows/{dataflowId}/refreshes"
  response <- httr::POST(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = list(notifyOption = notifyOption))
  process(response, output)
}

#' Creates or updates the specified dataflow refresh schedule configuration.Required scope: Dataflow.ReadWrite.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
update_refresh_schedule <- function(token, dataflowId, groupId, value, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/dataflows/{dataflowId}/refreshSchedule"
  response <- httr::PATCH(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = list(value = value))
  process(response, output)
}
