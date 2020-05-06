#' Grants or updates the permissions required to use the specified datasource for the specified user.Required scope: Dataset.ReadWrite.All 
#' @param datasourceId The datasource id
#' @param gatewayId The gateway id 
#' @return A `data.frame` object. 
#' @export
add_datasource_user <- function(token, datasourceId, gatewayId) {
  path <- "https://api.powerbi.com/v1.0/myorg/gateways/{gatewayId}/datasources/{datasourceId}/users"
  response <- httr::POST(glue::glue(path), httr::config(token = token))
  content <- jsonlite::fromJSON(
    httr::content(response, type = "text", encoding = "UTF-8")
  )
  content$value
}

#' Creates a new datasource on the specified gateway.Required scope: Dataset.ReadWrite.All 
#' @param gatewayId The gateway id 
#' @return A `data.frame` object. 
#' @export
create_datasource <- function(token, gatewayId) {
  path <- "https://api.powerbi.com/v1.0/myorg/gateways/{gatewayId}/datasources"
  response <- httr::POST(glue::glue(path), httr::config(token = token))
  content <- jsonlite::fromJSON(
    httr::content(response, type = "text", encoding = "UTF-8")
  )
  content$value
}

#' Deletes the specified datasource from the specified gateway.Required scope: Dataset.ReadWrite.All 
#' @param datasourceId The datasource id
#' @param gatewayId The gateway id 
#' @return A `data.frame` object. 
#' @export
delete_datasource <- function(token, datasourceId, gatewayId) {
  path <- "https://api.powerbi.com/v1.0/myorg/gateways/{gatewayId}/datasources/{datasourceId}"
  response <- httr::DELETE(glue::glue(path), httr::config(token = token))
  content <- jsonlite::fromJSON(
    httr::content(response, type = "text", encoding = "UTF-8")
  )
  content$value
}

#' Removes the specified user from the specified datasource.Required scope: Dataset.ReadWrite.All 
#' @param datasourceId The datasource id
#' @param emailAdress The user's email address or the service principal object id
#' @param gatewayId The gateway id 
#' @return A `data.frame` object. 
#' @export
delete_datasource_user <- function(token, datasourceId, emailAdress, gatewayId) {
  path <- "https://api.powerbi.com/v1.0/myorg/gateways/{gatewayId}/datasources/{datasourceId}/users/{emailAdress}"
  response <- httr::DELETE(glue::glue(path), httr::config(token = token))
  content <- jsonlite::fromJSON(
    httr::content(response, type = "text", encoding = "UTF-8")
  )
  content$value
}

#' Returns the specified datasource from the specified gateway.Required scope: Dataset.ReadWrite.All or Dataset.Read.All 
#' @param datasourceId The datasource id
#' @param gatewayId The gateway id 
#' @return A `data.frame` object. 
#' @export
get_datasource <- function(token, datasourceId, gatewayId) {
  path <- "https://api.powerbi.com/v1.0/myorg/gateways/{gatewayId}/datasources/{datasourceId}"
  response <- httr::GET(glue::glue(path), httr::config(token = token))
  content <- jsonlite::fromJSON(
    httr::content(response, type = "text", encoding = "UTF-8")
  )
  content$value
}

#' Returns a list of datasources from the specified gateway.Required scope: Dataset.ReadWrite.All or Dataset.Read.All 
#' @param gatewayId The gateway id 
#' @return A `data.frame` object. 
#' @export
get_datasources <- function(token, gatewayId) {
  path <- "https://api.powerbi.com/v1.0/myorg/gateways/{gatewayId}/datasources"
  response <- httr::GET(glue::glue(path), httr::config(token = token))
  content <- jsonlite::fromJSON(
    httr::content(response, type = "text", encoding = "UTF-8")
  )
  content$value
}

#' Checks the connectivity status of the specified datasource from the specified gateway.Required scope: Dataset.ReadWrite.All 
#' @param datasourceId The datasource id
#' @param gatewayId The gateway id 
#' @return A `data.frame` object. 
#' @export
get_datasource_status <- function(token, datasourceId, gatewayId) {
  path <- "https://api.powerbi.com/v1.0/myorg/gateways/{gatewayId}/datasources/{datasourceId}/status"
  response <- httr::GET(glue::glue(path), httr::config(token = token))
  content <- jsonlite::fromJSON(
    httr::content(response, type = "text", encoding = "UTF-8")
  )
  content$value
}

#' Returns a list of users who have access to the specified datasource.Required scope: Dataset.ReadWrite.All or Dataset.Read.AllTo set the permissions scope, see Register an app. 
#' @param datasourceId The datasource id
#' @param gatewayId The gateway id 
#' @return A `data.frame` object. 
#' @export
get_datasource_users <- function(token, datasourceId, gatewayId) {
  path <- "https://api.powerbi.com/v1.0/myorg/gateways/{gatewayId}/datasources/{datasourceId}/users"
  response <- httr::GET(glue::glue(path), httr::config(token = token))
  content <- jsonlite::fromJSON(
    httr::content(response, type = "text", encoding = "UTF-8")
  )
  content$value
}

#' Returns the specified gateway.Required scope: Dataset.ReadWrite.All or Dataset.Read.All 
#' @param gatewayId The gateway id 
#' @return A `data.frame` object. 
#' @export
get_gateway <- function(token, gatewayId) {
  path <- "https://api.powerbi.com/v1.0/myorg/gateways/{gatewayId}"
  response <- httr::GET(glue::glue(path), httr::config(token = token))
  content <- jsonlite::fromJSON(
    httr::content(response, type = "text", encoding = "UTF-8")
  )
  content$value
}

#' Returns a list of gateways for which the user is an admin.Required scope: Dataset.ReadWrite.All or Dataset.Read.All 
#' @param  OK 
#' @return A `data.frame` object. 
#' @export
get_gateways <- function(token) {
  path <- "https://api.powerbi.com/v1.0/myorg/gateways"
  response <- httr::GET(glue::glue(path), httr::config(token = token))
  content <- jsonlite::fromJSON(
    httr::content(response, type = "text", encoding = "UTF-8")
  )
  content$value
}

#' Updates the credentials of the specified datasource from the specified gateway.Required scope: Dataset.ReadWrite.All 
#' @param datasourceId The datasource id
#' @param gatewayId The gateway id 
#' @return A `data.frame` object. 
#' @export
update_datasource <- function(token, datasourceId, gatewayId) {
  path <- "https://api.powerbi.com/v1.0/myorg/gateways/{gatewayId}/datasources/{datasourceId}"
  response <- httr::PATCH(glue::glue(path), httr::config(token = token))
  content <- jsonlite::fromJSON(
    httr::content(response, type = "text", encoding = "UTF-8")
  )
  content$value
}
