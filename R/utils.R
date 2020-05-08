process <- function(response, output = "value") {
  if (output == "raw") {
    return(response)
  }
  content <- jsonlite::fromJSON(
    httr::content(response, type = "text", encoding = "UTF-8")
  )
  content$value
}
