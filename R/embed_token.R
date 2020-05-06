#' Generates an embed token to view the specified dashboard from the specified workspace.This API is relevant only to 'App owns data' embed scenario.Required scope: (all of the below)  
#' @param dashboardId The dashboard id
#' @param groupId The workspace id 
#' @return A `data.frame` object. 
#' @export
dashboards_generatetokeningroup <- function(token, dashboardId, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/dashboards/{dashboardId}/GenerateToken"
  response <- httr::POST(glue::glue(path), httr::config(token = token))
  content <- jsonlite::fromJSON(
    httr::content(response, type = "text", encoding = "UTF-8")
  )
  content$value
}

#' Generates an embed token to Embed Q&A based on the specified dataset from the specified workspace.This API is relevant only to 'App owns data' embed scenario.Required scope: Dataset.ReadWrite.All or Dataset.Read.AllWhen using service principal for authentication, refer to Service Principal with Power BI document along with considerations and limitations section. 
#' @param datasetId The dataset id
#' @param groupId The workspace id 
#' @return A `data.frame` object. 
#' @export
datasets_generatetokeningroup <- function(token, datasetId, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/datasets/{datasetId}/GenerateToken"
  response <- httr::POST(glue::glue(path), httr::config(token = token))
  content <- jsonlite::fromJSON(
    httr::content(response, type = "text", encoding = "UTF-8")
  )
  content$value
}

#' Generates an embed token for multiple reports, datasets and target workspaces. Reports and datasets do not have to be related. The binding of a report to a dataset can be done during embedding. Target workspaces are workspaces where creation of reports is allowed.This API is relevant only to 'App owns data' embed scenario.Required scope:  
#' @param datasets List of datasets
#' @param identities List of identities to use for RLS rules.
#' @param reports List of reports
#' @param targetWorkspaces List of target workspaces 
#' @return A `data.frame` object. 
#' @export
generate_token <- function(token, datasets, identities, reports, targetWorkspaces) {
  path <- "https://api.powerbi.com/v1.0/myorg/GenerateToken"
  response <- httr::POST(glue::glue(path), httr::config(token = token))
  content <- jsonlite::fromJSON(
    httr::content(response, type = "text", encoding = "UTF-8")
  )
  content$value
}

#' Generates an embed token to allow report creation on the specified workspace based on the specified dataset.This API is relevant only to 'App owns data' embed scenario.Required scope: (all of the below)  
#' @param groupId The workspace id 
#' @return A `data.frame` object. 
#' @export
reports_generatetokenforcreateingroup <- function(token, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/reports/GenerateToken"
  response <- httr::POST(glue::glue(path), httr::config(token = token))
  content <- jsonlite::fromJSON(
    httr::content(response, type = "text", encoding = "UTF-8")
  )
  content$value
}

#' Generates an embed token to view or edit the specified report from the specified workspace.This API is relevant only to 'App owns data' embed scenario.Required scope: (all of the below)  
#' @param groupId The workspace id
#' @param reportId The report id 
#' @return A `data.frame` object. 
#' @export
reports_generatetokeningroup <- function(token, groupId, reportId) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/reports/{reportId}/GenerateToken"
  response <- httr::POST(glue::glue(path), httr::config(token = token))
  content <- jsonlite::fromJSON(
    httr::content(response, type = "text", encoding = "UTF-8")
  )
  content$value
}

#' Generates an embed token to view the specified tile from the specified workspace.This API is relevant only to 'App owns data' embed scenario.Required scope: (all of the below)  
#' @param dashboardId The dashboard id
#' @param groupId The workspace id
#' @param tileId The tile id 
#' @return A `data.frame` object. 
#' @export
tiles_generatetokeningroup <- function(token, dashboardId, groupId, tileId) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/dashboards/{dashboardId}/tiles/{tileId}/GenerateToken"
  response <- httr::POST(glue::glue(path), httr::config(token = token))
  content <- jsonlite::fromJSON(
    httr::content(response, type = "text", encoding = "UTF-8")
  )
  content$value
}
