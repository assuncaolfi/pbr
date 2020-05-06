#' Creates a new empty dashboard on "My Workspace".Required scope: Content.Create 
#' @param name The name of the new dashboard 
#' @return A `data.frame` object. 
#' @export
add_dashboard <- function(token, name) {
  path <- "https://api.powerbi.com/v1.0/myorg/dashboards"
  httr::POST(glue::glue(path), httr::config(token = token))
}

#' Creates a new empty dashboard on the specified workspace.Required scope: Content.Create 
#' @param groupId The workspace id 
#' @return A `data.frame` object. 
#' @export
add_dashboard_in_group <- function(token, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/dashboards"
  httr::POST(glue::glue(path), httr::config(token = token))
}

#' Clones the specified tile from "My Workspace".If target report id and target dataset are not specified, the following can occur: 
#' @param dashboardId The dashboard id
#' @param tileId The tile id 
#' @return A `data.frame` object. 
#' @export
clone_tile <- function(token, dashboardId, tileId) {
  path <- "https://api.powerbi.com/v1.0/myorg/dashboards/{dashboardId}/tiles/{tileId}/Clone"
  httr::POST(glue::glue(path), httr::config(token = token))
}

#' Clones the specified tile from the specified workspace.If target report id and target dataset are missing, the following can occur: 
#' @param dashboardId The dashboard id
#' @param groupId The workspace id
#' @param tileId The tile id 
#' @return A `data.frame` object. 
#' @export
clone_tile_in_group <- function(token, dashboardId, groupId, tileId) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/dashboards/{dashboardId}/tiles/{tileId}/Clone"
  httr::POST(glue::glue(path), httr::config(token = token))
}

#' Returns the specified dashboard from "My Workspace".Required scope: Dashboard.ReadWrite.All or Dashboard.Read.All 
#' @param dashboardId The dashboard id 
#' @return A `data.frame` object. 
#' @export
get_dashboard <- function(token, dashboardId) {
  path <- "https://api.powerbi.com/v1.0/myorg/dashboards/{dashboardId}"
  httr::GET(glue::glue(path), httr::config(token = token))
}

#' Returns the specified dashboard from the specified workspace.Required scope: Dashboard.ReadWrite.All or Dashboard.Read.All 
#' @param dashboardId The dashboard id
#' @param groupId The workspace id 
#' @return A `data.frame` object. 
#' @export
get_dashboard_in_group <- function(token, dashboardId, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/dashboards/{dashboardId}"
  httr::GET(glue::glue(path), httr::config(token = token))
}

#' Returns a list of dashboards from "My Workspace".Required scope: Dashboard.ReadWrite.All or Dashboard.Read.All 
#' @param  OK 
#' @return A `data.frame` object. 
#' @export
get_dashboards <- function(token) {
  path <- "https://api.powerbi.com/v1.0/myorg/dashboards"
  httr::GET(glue::glue(path), httr::config(token = token))
}

#' Returns a list of dashboards from the specified workspace.Required scope: Dashboard.ReadWrite.All or Dashboard.Read.All 
#' @param groupId The workspace id 
#' @return A `data.frame` object. 
#' @export
get_dashboards_in_group <- function(token, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/dashboards"
  httr::GET(glue::glue(path), httr::config(token = token))
}

#' Returns the specified tile within the specified dashboard from "My Workspace".Note: All tile types are supported except for "model tiles", which include datasets and live tiles that contain an entire report page. Required scope: Dashboard.ReadWrite.All or Dashboard.Read.All 
#' @param dashboardId The dashboard id
#' @param tileId The tile id 
#' @return A `data.frame` object. 
#' @export
get_tile <- function(token, dashboardId, tileId) {
  path <- "https://api.powerbi.com/v1.0/myorg/dashboards/{dashboardId}/tiles/{tileId}"
  httr::GET(glue::glue(path), httr::config(token = token))
}

#' Returns the specified tile within the specified dashboard from the specified workspace.Note: All tile types are supported except for "model tiles", which include datasets and live tiles that contain an entire report page. Required scope: Dashboard.ReadWrite.All or Dashboard.Read.All 
#' @param dashboardId The dashboard id
#' @param groupId The workspace id
#' @param tileId The tile id 
#' @return A `data.frame` object. 
#' @export
get_tile_in_group <- function(token, dashboardId, groupId, tileId) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/dashboards/{dashboardId}/tiles/{tileId}"
  httr::GET(glue::glue(path), httr::config(token = token))
}

#' Returns a list of tiles within the specified dashboard from "My Workspace".Note: All tile types are supported except for "model tiles", which include datasets and live tiles that contain an entire report page. Required scope: Dashboard.ReadWrite.All or Dashboard.Read.All 
#' @param dashboardId The dashboard id 
#' @return A `data.frame` object. 
#' @export
get_tiles <- function(token, dashboardId) {
  path <- "https://api.powerbi.com/v1.0/myorg/dashboards/{dashboardId}/tiles"
  httr::GET(glue::glue(path), httr::config(token = token))
}

#' Returns a list of tiles within the specified dashboard from the specified workspace.Note: All tile types are supported except for "model tiles", which include datasets and live tiles that contain an entire report page. Required scope: Dashboard.ReadWrite.All or Dashboard.Read.All 
#' @param dashboardId The dashboard id
#' @param groupId The workspace id 
#' @return A `data.frame` object. 
#' @export
get_tiles_in_group <- function(token, dashboardId, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/dashboards/{dashboardId}/tiles"
  httr::GET(glue::glue(path), httr::config(token = token))
}
