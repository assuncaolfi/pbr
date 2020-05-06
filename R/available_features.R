#' Returns the specified available feature for user by name.Required scope: None 
#' @param featureName The feature name 
#' @return A `data.frame` object.
get_available_feature_by_name <- function(token, featureName) {
  path <- "https://api.powerbi.com/v1.0/myorg/availableFeatures(featureName='{featureName}')"
  httr::GET(glue::glue(path), config(token = token))
}

#' Returns a list of available features for the userRequired scope: None 
#' @param  OK 
#' @return A `data.frame` object.
