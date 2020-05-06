#' Returns the specified installed app.Required scope: App.Read.AllTo set the permissions scope, see Register an app. 
#' @param appId The app id 
#' @return A `data.frame` object.
get_app <- function(token, appId) {
  path <- "https://api.powerbi.com/v1.0/myorg/apps/{appId}"
  httr::GET(glue::glue(path), config(token = token))
}

#' Returns a list of installed apps.Required scope: App.Read.AllTo set the permissions scope, see Register an app. 
#' @param  OK 
#' @return A `data.frame` object.


#' Returns the specified dashboard from the specified app.Required scope: Dashboard.ReadWrite.All or Dashboard.Read.All 
#' @param appId The app id
#' @param dashboardId The dashboard id 
#' @return A `data.frame` object.
get_dashboard <- function(token, appId, dashboardId) {
  path <- "https://api.powerbi.com/v1.0/myorg/apps/{appId}/dashboards/{dashboardId}"
  httr::GET(glue::glue(path), config(token = token))
}

#' Returns a list of dashboards from the specified app.Required scope: Dashboard.ReadWrite.All or Dashboard.Read.All 
#' @param appId The app id 
#' @return A `data.frame` object.
get_dashboards <- function(token, appId) {
  path <- "https://api.powerbi.com/v1.0/myorg/apps/{appId}/dashboards"
  httr::GET(glue::glue(path), config(token = token))
}

#' Returns the specified report from the specified app.Required scope: Report.ReadWrite.All or Report.Read.All 
#' @param appId The app id
#' @param reportId The report id 
#' @return A `data.frame` object.
get_report <- function(token, appId, reportId) {
  path <- "https://api.powerbi.com/v1.0/myorg/apps/{appId}/reports/{reportId}"
  httr::GET(glue::glue(path), config(token = token))
}

#' Returns a list of reports from the specified app.Required scope: Report.ReadWrite.All or Report.Read.All 
#' @param appId The app id 
#' @return A `data.frame` object.
get_reports <- function(token, appId) {
  path <- "https://api.powerbi.com/v1.0/myorg/apps/{appId}/reports"
  httr::GET(glue::glue(path), config(token = token))
}

#' Returns the specified tile within the specified dashboard from the specified app.Note: All tile types are supported except for "model tiles", which include datasets and live tiles that contain an entire report page. Required scope: Dashboard.ReadWrite.All or Dashboard.Read.All 
#' @param appId The app id
#' @param dashboardId The dashboard id
#' @param tileId The tile id 
#' @return A `data.frame` object.
get_tile <- function(token, appId, dashboardId, tileId) {
  path <- "https://api.powerbi.com/v1.0/myorg/apps/{appId}/dashboards/{dashboardId}/tiles/{tileId}"
  httr::GET(glue::glue(path), config(token = token))
}

#' Returns a list of tiles within the specified dashboard from the specified app.Required scope: Dashboard.ReadWrite.All or Dashboard.Read.All 
#' @param appId The app id
#' @param dashboardId The dashboard id 
#' @return A `data.frame` object.
get_tiles <- function(token, appId, dashboardId) {
  path <- "https://api.powerbi.com/v1.0/myorg/apps/{appId}/dashboards/{dashboardId}/tiles"
  httr::GET(glue::glue(path), config(token = token))
}
