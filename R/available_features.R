#' Returns the specified available feature for user by name.Required scope: None 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
get_available_feature_by_name <- function(token, featureName, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/availableFeatures(featureName='{featureName}')"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns a list of available features for the userRequired scope: None 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
get_available_features <- function(token, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/availableFeatures"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}
