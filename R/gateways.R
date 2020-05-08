#' Grants or updates the permissions required to use the specified datasource for the specified user.Required scope: Dataset.ReadWrite.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
add_datasource_user <- function(token, datasourceId, gatewayId, datasourceAccessRight, displayName, emailAddress, identifier, principalType, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/gateways/{gatewayId}/datasources/{datasourceId}/users"
  response <- httr::POST(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = list(datasourceAccessRight = datasourceAccessRight, displayName = displayName, emailAddress = emailAddress, identifier = identifier, principalType = principalType))
  process(response, output)
}

#' Creates a new datasource on the specified gateway.Required scope: Dataset.ReadWrite.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
create_datasource <- function(token, gatewayId, connectionDetails, credentialDetails, dataSourceName, dataSourceType, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/gateways/{gatewayId}/datasources"
  response <- httr::POST(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = list(connectionDetails = connectionDetails, credentialDetails = credentialDetails, dataSourceName = dataSourceName, dataSourceType = dataSourceType))
  process(response, output)
}

#' Deletes the specified datasource from the specified gateway.Required scope: Dataset.ReadWrite.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
delete_datasource <- function(token, datasourceId, gatewayId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/gateways/{gatewayId}/datasources/{datasourceId}"
  response <- httr::DELETE(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Removes the specified user from the specified datasource.Required scope: Dataset.ReadWrite.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
delete_datasource_user <- function(token, datasourceId, emailAdress, gatewayId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/gateways/{gatewayId}/datasources/{datasourceId}/users/{emailAdress}"
  response <- httr::DELETE(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns the specified datasource from the specified gateway.Required scope: Dataset.ReadWrite.All or Dataset.Read.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
get_datasource <- function(token, datasourceId, gatewayId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/gateways/{gatewayId}/datasources/{datasourceId}"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns a list of datasources from the specified gateway.Required scope: Dataset.ReadWrite.All or Dataset.Read.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
get_datasources <- function(token, gatewayId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/gateways/{gatewayId}/datasources"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Checks the connectivity status of the specified datasource from the specified gateway.Required scope: Dataset.ReadWrite.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
get_datasource_status <- function(token, datasourceId, gatewayId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/gateways/{gatewayId}/datasources/{datasourceId}/status"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns a list of users who have access to the specified datasource.Required scope: Dataset.ReadWrite.All or Dataset.Read.AllTo set the permissions scope, see Register an app. 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
get_datasource_users <- function(token, datasourceId, gatewayId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/gateways/{gatewayId}/datasources/{datasourceId}/users"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns the specified gateway.Required scope: Dataset.ReadWrite.All or Dataset.Read.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
get_gateway <- function(token, gatewayId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/gateways/{gatewayId}"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns a list of gateways for which the user is an admin.Required scope: Dataset.ReadWrite.All or Dataset.Read.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
get_gateways <- function(token, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/gateways"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Updates the credentials of the specified datasource from the specified gateway.Required scope: Dataset.ReadWrite.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
update_datasource <- function(token, datasourceId, gatewayId, credentialDetails, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/gateways/{gatewayId}/datasources/{datasourceId}"
  response <- httr::PATCH(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = list(credentialDetails = credentialDetails))
  process(response, output)
}
