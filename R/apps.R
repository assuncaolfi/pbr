#' Returns the specified installed app.Required scope: App.Read.AllTo set the permissions scope, see Register an app. 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
get_app <- function(token, appId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/apps/{appId}"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns a list of installed apps.Required scope: App.Read.AllTo set the permissions scope, see Register an app. 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
get_apps <- function(token, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/apps"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns the specified dashboard from the specified app.Required scope: Dashboard.ReadWrite.All or Dashboard.Read.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
get_dashboard <- function(token, appId, dashboardId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/apps/{appId}/dashboards/{dashboardId}"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns a list of dashboards from the specified app.Required scope: Dashboard.ReadWrite.All or Dashboard.Read.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
get_dashboards <- function(token, appId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/apps/{appId}/dashboards"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns the specified report from the specified app.Required scope: Report.ReadWrite.All or Report.Read.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
get_report <- function(token, appId, reportId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/apps/{appId}/reports/{reportId}"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns a list of reports from the specified app.Required scope: Report.ReadWrite.All or Report.Read.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
get_reports <- function(token, appId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/apps/{appId}/reports"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns the specified tile within the specified dashboard from the specified app.Note: All tile types are supported except for "model tiles", which include datasets and live tiles that contain an entire report page. Required scope: Dashboard.ReadWrite.All or Dashboard.Read.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
get_tile <- function(token, appId, dashboardId, tileId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/apps/{appId}/dashboards/{dashboardId}/tiles/{tileId}"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns a list of tiles within the specified dashboard from the specified app.Required scope: Dashboard.ReadWrite.All or Dashboard.Read.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
get_tiles <- function(token, appId, dashboardId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/apps/{appId}/dashboards/{dashboardId}/tiles"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}
