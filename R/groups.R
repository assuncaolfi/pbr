#' Grants the specified user permissions to the specified workspace.Notes:  
#' @param groupId The workspace id 
#' @return A `data.frame` object. 
#' @export
add_group_user <- function(token, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/users"
  response <- httr::POST(glue::glue(path), httr::config(token = token))
  content <- jsonlite::fromJSON(
    httr::content(response, type = "text", encoding = "UTF-8")
  )
  content$value
}

#' Creates new workspace.Required scope: Workspace.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param workspaceV2 Preview feature: Create a workspace V2. The only supported value is true. 
#' @return A `data.frame` object. 
#' @export
create_group <- function(token, workspaceV2) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups"
  response <- httr::POST(glue::glue(path), httr::config(token = token))
  content <- jsonlite::fromJSON(
    httr::content(response, type = "text", encoding = "UTF-8")
  )
  content$value
}

#' Deletes the specified workspace.Required scope: Workspace.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param groupId The workspace id to delete 
#' @return A `data.frame` object. 
#' @export
delete_group <- function(token, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}"
  response <- httr::DELETE(glue::glue(path), httr::config(token = token))
  content <- jsonlite::fromJSON(
    httr::content(response, type = "text", encoding = "UTF-8")
  )
  content$value
}

#' Deletes the specified user permissions from the specified workspace.Required scope: Workspace.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param groupId The workspace id
#' @param user The email address of the user or the service principal object id to delete 
#' @return A `data.frame` object. 
#' @export
delete_user_in_group <- function(token, groupId, user) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/users/{user}"
  response <- httr::DELETE(glue::glue(path), httr::config(token = token))
  content <- jsonlite::fromJSON(
    httr::content(response, type = "text", encoding = "UTF-8")
  )
  content$value
}

#' Returns a list of workspaces the user has access to.Note: Users that have been recently added to a group may not have their new group immediately available, see Refresh user permissions.Required scope: Workspace.Read.All or Workspace.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param  Filters the results, based on a boolean condition
#' @param  Skips the first n results
#' @param  Returns only the first n results 
#' @return A `data.frame` object. 
#' @export
get_groups <- function(token) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups"
  response <- httr::GET(glue::glue(path), httr::config(token = token))
  content <- jsonlite::fromJSON(
    httr::content(response, type = "text", encoding = "UTF-8")
  )
  content$value
}

#' Returns a list of users that have access to the specified workspace.Required scope: Workspace.Read.All or Workspace.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param groupId The workspace id 
#' @return A `data.frame` object. 
#' @export
get_group_users <- function(token, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/users"
  response <- httr::GET(glue::glue(path), httr::config(token = token))
  content <- jsonlite::fromJSON(
    httr::content(response, type = "text", encoding = "UTF-8")
  )
  content$value
}

#' Update the specified user permissions to the specified workspace.Notes:  
#' @param groupId The workspace id 
#' @return A `data.frame` object. 
#' @export
update_group_user <- function(token, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/users"
  response <- httr::PUT(glue::glue(path), httr::config(token = token))
  content <- jsonlite::fromJSON(
    httr::content(response, type = "text", encoding = "UTF-8")
  )
  content$value
}
