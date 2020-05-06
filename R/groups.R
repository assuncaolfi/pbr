#' Grants the specified user permissions to the specified workspace.Notes:  
#' @param groupId The workspace id 
#' @return A `data.frame` object.
add_group_user <- function(token, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/users"
  httr::POST(glue::glue(path), config(token = token))
}

#' Creates new workspace.Required scope: Workspace.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param workspaceV2 Preview feature: Create a workspace V2. The only supported value is true. 
#' @return A `data.frame` object.
create_group <- function(token, workspaceV2) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups"
  httr::POST(glue::glue(path), config(token = token))
}

#' Deletes the specified workspace.Required scope: Workspace.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param groupId The workspace id to delete 
#' @return A `data.frame` object.
delete_group <- function(token, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}"
  httr::DELETE(glue::glue(path), config(token = token))
}

#' Deletes the specified user permissions from the specified workspace.Required scope: Workspace.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param groupId The workspace id
#' @param user The email address of the user or the service principal object id to delete 
#' @return A `data.frame` object.
delete_user_in_group <- function(token, groupId, user) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/users/{user}"
  httr::DELETE(glue::glue(path), config(token = token))
}

#' Returns a list of workspaces the user has access to.Note: Users that have been recently added to a group may not have their new group immediately available, see Refresh user permissions.Required scope: Workspace.Read.All or Workspace.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param filter Filters the results, based on a boolean condition
#' @param skip Skips the first n results
#' @param top Returns only the first n results 
#' @return A `data.frame` object.
get_groups <- function(token, filter, skip, top) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups"
  httr::GET(glue::glue(path), config(token = token))
}

#' Returns a list of users that have access to the specified workspace.Required scope: Workspace.Read.All or Workspace.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param groupId The workspace id 
#' @return A `data.frame` object.
get_group_users <- function(token, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/users"
  httr::GET(glue::glue(path), config(token = token))
}

#' Update the specified user permissions to the specified workspace.Notes:  
#' @param groupId The workspace id 
#' @return A `data.frame` object.
update_group_user <- function(token, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/users"
  httr::PUT(glue::glue(path), config(token = token))
}
