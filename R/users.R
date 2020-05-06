#' Refreshes user permissions in Power BI
#' When a user is granted permissions to a workspace, app, or artifact, it might not be immediately available through API calls. This operation refreshes user permissions and makes sure the user permissions are fully updated.  Required scope: Workspace.Read.All  or Workspace.ReadWrite.AllTo set the permissions scope, see Register an app.  
#' @param  OK 
#' @return A `data.frame` object. 
#' @export
refresh_user_permissions <- function(token) {
  path <- "https://api.powerbi.com/v1.0/myorg/RefreshUserPermissions"
  response <- httr::POST(glue::glue(path), httr::config(token = token))
  content <- jsonlite::fromJSON(
    httr::content(response, type = "text", encoding = "UTF-8")
  )
  content$value
}
