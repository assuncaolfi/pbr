#' Grants the specified user permissions to the specified workspace.Notes:  
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
add_group_user <- function(token, groupId, displayName, emailAddress, groupUserAccessRight, identifier, principalType, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/users"
  response <- httr::POST(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = list(displayName = displayName, emailAddress = emailAddress, groupUserAccessRight = groupUserAccessRight, identifier = identifier, principalType = principalType))
  process(response, output)
}

#' Creates new workspace.Required scope: Workspace.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
create_group <- function(token, workspaceV2 = NULL, name, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/groups"
  response <- httr::POST(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = list(name = name))
  process(response, output)
}

#' Deletes the specified workspace.Required scope: Workspace.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
delete_group <- function(token, groupId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}"
  response <- httr::DELETE(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Deletes the specified user permissions from the specified workspace.Required scope: Workspace.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
delete_user_in_group <- function(token, groupId, user, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/users/{user}"
  response <- httr::DELETE(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns a list of workspaces the user has access to.Note: Users that have been recently added to a group may not have their new group immediately available, see Refresh user permissions.Required scope: Workspace.Read.All or Workspace.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
get_groups <- function(token, filter = NULL, skip = NULL, top = NULL, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/groups"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns a list of users that have access to the specified workspace.Required scope: Workspace.Read.All or Workspace.ReadWrite.AllTo set the permissions scope, see Register an app. 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
get_group_users <- function(token, groupId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/users"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Update the specified user permissions to the specified workspace.Notes:  
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
update_group_user <- function(token, groupId, displayName, emailAddress, groupUserAccessRight, identifier, principalType, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/users"
  response <- httr::PUT(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = list(displayName = displayName, emailAddress = emailAddress, groupUserAccessRight = groupUserAccessRight, identifier = identifier, principalType = principalType))
  process(response, output)
}
