#' Returns the specified installed app.Required scope: App.Read.AllTo set the permissions scope, see Register an app. 
#' @param appId The app id 
#' @return A `data.frame` object. 
#' @export
get_app <- function(token, appId) {
  path <- "https://api.powerbi.com/v1.0/myorg/apps/{appId}"
  response <- httr::GET(glue::glue(path), httr::config(token = token))
  content <- jsonlite::fromJSON(
    httr::content(response, type = "text", encoding = "UTF-8")
  )
  content$value
}

#' Returns a list of installed apps.Required scope: App.Read.AllTo set the permissions scope, see Register an app. 
#' @param  OK 
#' @return A `data.frame` object. 
#' @export
get_apps <- function(token) {
  path <- "https://api.powerbi.com/v1.0/myorg/apps"
  response <- httr::GET(glue::glue(path), httr::config(token = token))
  content <- jsonlite::fromJSON(
    httr::content(response, type = "text", encoding = "UTF-8")
  )
  content$value
}

#' Returns the specified dashboard from the specified app.Required scope: Dashboard.ReadWrite.All or Dashboard.Read.All 
#' @param appId The app id
#' @param dashboardId The dashboard id 
#' @return A `data.frame` object. 
#' @export
get_dashboard <- function(token, appId, dashboardId) {
  path <- "https://api.powerbi.com/v1.0/myorg/apps/{appId}/dashboards/{dashboardId}"
  response <- httr::GET(glue::glue(path), httr::config(token = token))
  content <- jsonlite::fromJSON(
    httr::content(response, type = "text", encoding = "UTF-8")
  )
  content$value
}

#' Returns a list of dashboards from the specified app.Required scope: Dashboard.ReadWrite.All or Dashboard.Read.All 
#' @param appId The app id 
#' @return A `data.frame` object. 
#' @export
get_dashboards <- function(token, appId) {
  path <- "https://api.powerbi.com/v1.0/myorg/apps/{appId}/dashboards"
  response <- httr::GET(glue::glue(path), httr::config(token = token))
  content <- jsonlite::fromJSON(
    httr::content(response, type = "text", encoding = "UTF-8")
  )
  content$value
}

#' Returns the specified report from the specified app.Required scope: Report.ReadWrite.All or Report.Read.All 
#' @param appId The app id
#' @param reportId The report id 
#' @return A `data.frame` object. 
#' @export
get_report <- function(token, appId, reportId) {
  path <- "https://api.powerbi.com/v1.0/myorg/apps/{appId}/reports/{reportId}"
  response <- httr::GET(glue::glue(path), httr::config(token = token))
  content <- jsonlite::fromJSON(
    httr::content(response, type = "text", encoding = "UTF-8")
  )
  content$value
}

#' Returns a list of reports from the specified app.Required scope: Report.ReadWrite.All or Report.Read.All 
#' @param appId The app id 
#' @return A `data.frame` object. 
#' @export
get_reports <- function(token, appId) {
  path <- "https://api.powerbi.com/v1.0/myorg/apps/{appId}/reports"
  response <- httr::GET(glue::glue(path), httr::config(token = token))
  content <- jsonlite::fromJSON(
    httr::content(response, type = "text", encoding = "UTF-8")
  )
  content$value
}

#' Returns the specified tile within the specified dashboard from the specified app.Note: All tile types are supported except for "model tiles", which include datasets and live tiles that contain an entire report page. Required scope: Dashboard.ReadWrite.All or Dashboard.Read.All 
#' @param appId The app id
#' @param dashboardId The dashboard id
#' @param tileId The tile id 
#' @return A `data.frame` object. 
#' @export
get_tile <- function(token, appId, dashboardId, tileId) {
  path <- "https://api.powerbi.com/v1.0/myorg/apps/{appId}/dashboards/{dashboardId}/tiles/{tileId}"
  response <- httr::GET(glue::glue(path), httr::config(token = token))
  content <- jsonlite::fromJSON(
    httr::content(response, type = "text", encoding = "UTF-8")
  )
  content$value
}

#' Returns a list of tiles within the specified dashboard from the specified app.Required scope: Dashboard.ReadWrite.All or Dashboard.Read.All 
#' @param appId The app id
#' @param dashboardId The dashboard id 
#' @return A `data.frame` object. 
#' @export
get_tiles <- function(token, appId, dashboardId) {
  path <- "https://api.powerbi.com/v1.0/myorg/apps/{appId}/dashboards/{dashboardId}/tiles"
  response <- httr::GET(glue::glue(path), httr::config(token = token))
  content <- jsonlite::fromJSON(
    httr::content(response, type = "text", encoding = "UTF-8")
  )
  content$value
}
