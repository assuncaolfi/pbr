#' Returns authentication token.
#' @param name The app name
#' @param key The app key
#' @param secret The app secret
#' @return A `token` object.
#' @export
authenticate <- function(name, key, secret = NULL) {
  my_app <- httr::oauth_app(
    appname = name,
    key = key,
    secret = secret
  )
  my_token <- httr::oauth2.0_token(
    endpoint = httr::oauth_endpoints("azure"),
    app = my_app,
    user_params = list(resource = "https://analysis.windows.net/powerbi/api"),
    use_oob = FALSE,
    cache = FALSE
  )
  my_token
}
