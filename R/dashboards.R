#' Creates a new empty dashboard on "My Workspace".Required scope: Content.Create 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
add_dashboard <- function(token, name, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/dashboards"
  response <- httr::POST(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = list(name = name))
  process(response, output)
}

#' Creates a new empty dashboard on the specified workspace.Required scope: Content.Create 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
add_dashboard_in_group <- function(token, groupId, name, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/dashboards"
  response <- httr::POST(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = list(name = name))
  process(response, output)
}

#' Clones the specified tile from "My Workspace".If target report id and target dataset are not specified, the following can occur: 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
clone_tile <- function(token, dashboardId, tileId, positionConflictAction, targetDashboardId, targetModelId, targetReportId, targetWorkspaceId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/dashboards/{dashboardId}/tiles/{tileId}/Clone"
  response <- httr::POST(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = list(positionConflictAction = positionConflictAction, targetDashboardId = targetDashboardId, targetModelId = targetModelId, targetReportId = targetReportId, targetWorkspaceId = targetWorkspaceId))
  process(response, output)
}

#' Clones the specified tile from the specified workspace.If target report id and target dataset are missing, the following can occur: 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
clone_tile_in_group <- function(token, dashboardId, groupId, tileId, positionConflictAction, targetDashboardId, targetModelId, targetReportId, targetWorkspaceId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/dashboards/{dashboardId}/tiles/{tileId}/Clone"
  response <- httr::POST(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = list(positionConflictAction = positionConflictAction, targetDashboardId = targetDashboardId, targetModelId = targetModelId, targetReportId = targetReportId, targetWorkspaceId = targetWorkspaceId))
  process(response, output)
}

#' Returns the specified dashboard from "My Workspace".Required scope: Dashboard.ReadWrite.All or Dashboard.Read.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
get_dashboard <- function(token, dashboardId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/dashboards/{dashboardId}"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns the specified dashboard from the specified workspace.Required scope: Dashboard.ReadWrite.All or Dashboard.Read.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
get_dashboard_in_group <- function(token, dashboardId, groupId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/dashboards/{dashboardId}"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns a list of dashboards from "My Workspace".Required scope: Dashboard.ReadWrite.All or Dashboard.Read.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
get_dashboards <- function(token, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/dashboards"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns a list of dashboards from the specified workspace.Required scope: Dashboard.ReadWrite.All or Dashboard.Read.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
get_dashboards_in_group <- function(token, groupId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/dashboards"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns the specified tile within the specified dashboard from "My Workspace".Note: All tile types are supported except for "model tiles", which include datasets and live tiles that contain an entire report page. Required scope: Dashboard.ReadWrite.All or Dashboard.Read.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
get_tile <- function(token, dashboardId, tileId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/dashboards/{dashboardId}/tiles/{tileId}"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns the specified tile within the specified dashboard from the specified workspace.Note: All tile types are supported except for "model tiles", which include datasets and live tiles that contain an entire report page. Required scope: Dashboard.ReadWrite.All or Dashboard.Read.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
get_tile_in_group <- function(token, dashboardId, groupId, tileId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/dashboards/{dashboardId}/tiles/{tileId}"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns a list of tiles within the specified dashboard from "My Workspace".Note: All tile types are supported except for "model tiles", which include datasets and live tiles that contain an entire report page. Required scope: Dashboard.ReadWrite.All or Dashboard.Read.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
get_tiles <- function(token, dashboardId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/dashboards/{dashboardId}/tiles"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns a list of tiles within the specified dashboard from the specified workspace.Note: All tile types are supported except for "model tiles", which include datasets and live tiles that contain an entire report page. Required scope: Dashboard.ReadWrite.All or Dashboard.Read.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
get_tiles_in_group <- function(token, dashboardId, groupId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/dashboards/{dashboardId}/tiles"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}
