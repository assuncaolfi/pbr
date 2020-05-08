#' Refreshes user permissions in Power BI
#' When a user is granted permissions to a workspace, app, or artifact, it might not be immediately available through API calls. This operation refreshes user permissions and makes sure the user permissions are fully updated.  Required scope: Workspace.Read.All  or Workspace.ReadWrite.AllTo set the permissions scope, see Register an app.  
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
refresh_user_permissions <- function(token, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/RefreshUserPermissions"
  response <- httr::POST(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}
