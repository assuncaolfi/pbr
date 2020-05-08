#' Generates an embed token to view the specified dashboard from the specified workspace.This API is relevant only to 'App owns data' embed scenario.Required scope: (all of the below)  
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
dashboards_generatetokeningroup <- function(token, dashboardId, groupId, accessLevel, allowSaveAs, datasetId, identities, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/dashboards/{dashboardId}/GenerateToken"
  response <- httr::POST(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = list(accessLevel = accessLevel, allowSaveAs = allowSaveAs, datasetId = datasetId, identities = identities))
  process(response, output)
}

#' Generates an embed token to Embed Q&A based on the specified dataset from the specified workspace.This API is relevant only to 'App owns data' embed scenario.Required scope: Dataset.ReadWrite.All or Dataset.Read.AllWhen using service principal for authentication, refer to Service Principal with Power BI document along with considerations and limitations section. 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
datasets_generatetokeningroup <- function(token, datasetId, groupId, accessLevel, allowSaveAs, body__datasetId, identities, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/datasets/{datasetId}/GenerateToken"
  response <- httr::POST(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = list(accessLevel = accessLevel, allowSaveAs = allowSaveAs, body__datasetId = body__datasetId, identities = identities))
  process(response, output)
}

#' Generates an embed token for multiple reports, datasets and target workspaces. Reports and datasets do not have to be related. The binding of a report to a dataset can be done during embedding. Target workspaces are workspaces where creation of reports is allowed.This API is relevant only to 'App owns data' embed scenario.Required scope:  
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
generate_token <- function(token, datasets, identities, reports, targetWorkspaces, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/GenerateToken"
  response <- httr::POST(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = list(datasets = datasets, identities = identities, reports = reports, targetWorkspaces = targetWorkspaces))
  process(response, output)
}

#' Generates an embed token to allow report creation on the specified workspace based on the specified dataset.This API is relevant only to 'App owns data' embed scenario.Required scope: (all of the below)  
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
reports_generatetokenforcreateingroup <- function(token, groupId, accessLevel, allowSaveAs, datasetId, identities, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/reports/GenerateToken"
  response <- httr::POST(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = list(accessLevel = accessLevel, allowSaveAs = allowSaveAs, datasetId = datasetId, identities = identities))
  process(response, output)
}

#' Generates an embed token to view or edit the specified report from the specified workspace.This API is relevant only to 'App owns data' embed scenario.Required scope: (all of the below)  
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
reports_generatetokeningroup <- function(token, groupId, reportId, accessLevel, allowSaveAs, datasetId, identities, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/reports/{reportId}/GenerateToken"
  response <- httr::POST(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = list(accessLevel = accessLevel, allowSaveAs = allowSaveAs, datasetId = datasetId, identities = identities))
  process(response, output)
}

#' Generates an embed token to view the specified tile from the specified workspace.This API is relevant only to 'App owns data' embed scenario.Required scope: (all of the below)  
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
tiles_generatetokeningroup <- function(token, dashboardId, groupId, tileId, accessLevel, allowSaveAs, datasetId, identities, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/dashboards/{dashboardId}/tiles/{tileId}/GenerateToken"
  response <- httr::POST(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = list(accessLevel = accessLevel, allowSaveAs = allowSaveAs, datasetId = datasetId, identities = identities))
  process(response, output)
}
