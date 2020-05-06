#' Deletes all rows from the specified table within the specified dataset from "My Workspace".Note: this API supports only Push datasets. Required scope: Dataset.ReadWrite.All 
#' @param datasetId The dataset id
#' @param tableName The table name 
#' @return A `data.frame` object. 
#' @export
datasets_deleterows <- function(token, datasetId, tableName) {
  path <- "https://api.powerbi.com/v1.0/myorg/datasets/{datasetId}/tables/{tableName}/rows"
  response <- httr::DELETE(glue::glue(path), httr::config(token = token))
  content <- jsonlite::fromJSON(
    httr::content(response, type = "text", encoding = "UTF-8")
  )
  content$value
}

#' Deletes all rows from the specified table, within the specified dataset, from the specified workspace.Note: This API supports only Push datasets. Required scope: Dataset.ReadWrite.All 
#' @param datasetId The dataset id
#' @param groupId The workspace id
#' @param tableName The table name 
#' @return A `data.frame` object. 
#' @export
datasets_deleterowsingroup <- function(token, datasetId, groupId, tableName) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/datasets/{datasetId}/tables/{tableName}/rows"
  response <- httr::DELETE(glue::glue(path), httr::config(token = token))
  content <- jsonlite::fromJSON(
    httr::content(response, type = "text", encoding = "UTF-8")
  )
  content$value
}

#' Returns a list of tables tables within the specified dataset from "My Workspace".Note: This API supports only Push datasets. Required scope: Dataset.ReadWrite.All or Dataset.Read.All 
#' @param datasetId The dataset id 
#' @return A `data.frame` object. 
#' @export
datasets_gettables <- function(token, datasetId) {
  path <- "https://api.powerbi.com/v1.0/myorg/datasets/{datasetId}/tables"
  response <- httr::GET(glue::glue(path), httr::config(token = token))
  content <- jsonlite::fromJSON(
    httr::content(response, type = "text", encoding = "UTF-8")
  )
  content$value
}

#' Returns a list of tables within the specified dataset from the specified workspace.Note: This API supports only Push datasets. Required scope: Dataset.ReadWrite.All or Dataset.Read.All 
#' @param datasetId The dataset id
#' @param groupId The workspace id 
#' @return A `data.frame` object. 
#' @export
datasets_gettablesingroup <- function(token, datasetId, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/datasets/{datasetId}/tables"
  response <- httr::GET(glue::glue(path), httr::config(token = token))
  content <- jsonlite::fromJSON(
    httr::content(response, type = "text", encoding = "UTF-8")
  )
  content$value
}

#' Creates a new dataset on "My Workspace".Note: This API supports only Push datasets.Required scope: Dataset.ReadWrite.All 
#' @param defaultRetentionPolicy The default retention policy 
#' @return A `data.frame` object. 
#' @export
datasets_postdataset <- function(token, defaultRetentionPolicy) {
  path <- "https://api.powerbi.com/v1.0/myorg/datasets"
  response <- httr::POST(glue::glue(path), httr::config(token = token))
  content <- jsonlite::fromJSON(
    httr::content(response, type = "text", encoding = "UTF-8")
  )
  content$value
}

#' Creates a new dataset in the specified workspace.Note: This API supports only Push datasets.Required scope: Dataset.ReadWrite.All 
#' @param groupId The workspace id
#' @param defaultRetentionPolicy The default retention policy 
#' @return A `data.frame` object. 
#' @export
datasets_postdatasetingroup <- function(token, groupId, defaultRetentionPolicy) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/datasets"
  response <- httr::POST(glue::glue(path), httr::config(token = token))
  content <- jsonlite::fromJSON(
    httr::content(response, type = "text", encoding = "UTF-8")
  )
  content$value
}

#' Adds new data rows to the specified table within the specified dataset from "My Workspace".Note: This API supports only Push datasets. REST API Limitations: See Power BI REST API limitations. Required scope: Dataset.ReadWrite.All 
#' @param datasetId The dataset id
#' @param tableName The table name 
#' @return A `data.frame` object. 
#' @export
datasets_postrows <- function(token, datasetId, tableName) {
  path <- "https://api.powerbi.com/v1.0/myorg/datasets/{datasetId}/tables/{tableName}/rows"
  response <- httr::POST(glue::glue(path), httr::config(token = token))
  content <- jsonlite::fromJSON(
    httr::content(response, type = "text", encoding = "UTF-8")
  )
  content$value
}

#' Adds new data rows to the specified table, within the specified dataset, from the specified workspace.Note: This API supports only Push datasets. REST API Limitations: See Power BI REST API limitations. Required scope: Dataset.ReadWrite.All 
#' @param datasetId The dataset id
#' @param groupId The workspace id
#' @param tableName The table name 
#' @return A `data.frame` object. 
#' @export
datasets_postrowsingroup <- function(token, datasetId, groupId, tableName) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/datasets/{datasetId}/tables/{tableName}/rows"
  response <- httr::POST(glue::glue(path), httr::config(token = token))
  content <- jsonlite::fromJSON(
    httr::content(response, type = "text", encoding = "UTF-8")
  )
  content$value
}

#' Updates the metadata and schema for the specified table within the specified dataset from "My Workspace".Note: This API supports only Push datasets. Required scope: Dataset.ReadWrite.All 
#' @param datasetId The dataset id
#' @param tableName The table name 
#' @return A `data.frame` object. 
#' @export
datasets_puttable <- function(token, datasetId, tableName) {
  path <- "https://api.powerbi.com/v1.0/myorg/datasets/{datasetId}/tables/{tableName}"
  response <- httr::PUT(glue::glue(path), httr::config(token = token))
  content <- jsonlite::fromJSON(
    httr::content(response, type = "text", encoding = "UTF-8")
  )
  content$value
}

#' Updates the metadata and schema for the specified table, within the specified dataset, from the specified workspace.Note: This API supports only Push datasets. Required scope: Dataset.ReadWrite.All 
#' @param datasetId The dataset id
#' @param groupId The workspace id
#' @param tableName The table name 
#' @return A `data.frame` object. 
#' @export
datasets_puttableingroup <- function(token, datasetId, groupId, tableName) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/datasets/{datasetId}/tables/{tableName}"
  response <- httr::PUT(glue::glue(path), httr::config(token = token))
  content <- jsonlite::fromJSON(
    httr::content(response, type = "text", encoding = "UTF-8")
  )
  content$value
}
