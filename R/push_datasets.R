#' Deletes all rows from the specified table within the specified dataset from "My Workspace".Note: this API supports only Push datasets. Required scope: Dataset.ReadWrite.All 
#' @param datasetId The dataset id
#' @param tableName The table name 
#' @return A `data.frame` object.
datasets_deleterows <- function(token, datasetId, tableName) {
  path <- "https://api.powerbi.com/v1.0/myorg/datasets/{datasetId}/tables/{tableName}/rows"
  httr::DELETE(glue::glue(path), config(token = token))
}

#' Deletes all rows from the specified table, within the specified dataset, from the specified workspace.Note: This API supports only Push datasets. Required scope: Dataset.ReadWrite.All 
#' @param datasetId The dataset id
#' @param groupId The workspace id
#' @param tableName The table name 
#' @return A `data.frame` object.
datasets_deleterowsingroup <- function(token, datasetId, groupId, tableName) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/datasets/{datasetId}/tables/{tableName}/rows"
  httr::DELETE(glue::glue(path), config(token = token))
}

#' Returns a list of tables tables within the specified dataset from "My Workspace".Note: This API supports only Push datasets. Required scope: Dataset.ReadWrite.All or Dataset.Read.All 
#' @param datasetId The dataset id 
#' @return A `data.frame` object.
datasets_gettables <- function(token, datasetId) {
  path <- "https://api.powerbi.com/v1.0/myorg/datasets/{datasetId}/tables"
  httr::GET(glue::glue(path), config(token = token))
}

#' Returns a list of tables within the specified dataset from the specified workspace.Note: This API supports only Push datasets. Required scope: Dataset.ReadWrite.All or Dataset.Read.All 
#' @param datasetId The dataset id
#' @param groupId The workspace id 
#' @return A `data.frame` object.
datasets_gettablesingroup <- function(token, datasetId, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/datasets/{datasetId}/tables"
  httr::GET(glue::glue(path), config(token = token))
}

#' Creates a new dataset on "My Workspace".Note: This API supports only Push datasets.Required scope: Dataset.ReadWrite.All 
#' @param defaultRetentionPolicy The default retention policy 
#' @return A `data.frame` object.
datasets_postdataset <- function(token, defaultRetentionPolicy) {
  path <- "https://api.powerbi.com/v1.0/myorg/datasets"
  httr::POST(glue::glue(path), config(token = token))
}

#' Creates a new dataset in the specified workspace.Note: This API supports only Push datasets.Required scope: Dataset.ReadWrite.All 
#' @param groupId The workspace id
#' @param defaultRetentionPolicy The default retention policy 
#' @return A `data.frame` object.
datasets_postdatasetingroup <- function(token, groupId, defaultRetentionPolicy) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/datasets"
  httr::POST(glue::glue(path), config(token = token))
}

#' Adds new data rows to the specified table within the specified dataset from "My Workspace".Note: This API supports only Push datasets. REST API Limitations: See Power BI REST API limitations. Required scope: Dataset.ReadWrite.All 
#' @param datasetId The dataset id
#' @param tableName The table name 
#' @return A `data.frame` object.
datasets_postrows <- function(token, datasetId, tableName) {
  path <- "https://api.powerbi.com/v1.0/myorg/datasets/{datasetId}/tables/{tableName}/rows"
  httr::POST(glue::glue(path), config(token = token))
}

#' Adds new data rows to the specified table, within the specified dataset, from the specified workspace.Note: This API supports only Push datasets. REST API Limitations: See Power BI REST API limitations. Required scope: Dataset.ReadWrite.All 
#' @param datasetId The dataset id
#' @param groupId The workspace id
#' @param tableName The table name 
#' @return A `data.frame` object.
datasets_postrowsingroup <- function(token, datasetId, groupId, tableName) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/datasets/{datasetId}/tables/{tableName}/rows"
  httr::POST(glue::glue(path), config(token = token))
}

#' Updates the metadata and schema for the specified table within the specified dataset from "My Workspace".Note: This API supports only Push datasets. Required scope: Dataset.ReadWrite.All 
#' @param datasetId The dataset id
#' @param tableName The table name 
#' @return A `data.frame` object.
datasets_puttable <- function(token, datasetId, tableName) {
  path <- "https://api.powerbi.com/v1.0/myorg/datasets/{datasetId}/tables/{tableName}"
  httr::PUT(glue::glue(path), config(token = token))
}

#' Updates the metadata and schema for the specified table, within the specified dataset, from the specified workspace.Note: This API supports only Push datasets. Required scope: Dataset.ReadWrite.All 
#' @param datasetId The dataset id
#' @param groupId The workspace id
#' @param tableName The table name 
#' @return A `data.frame` object.
datasets_puttableingroup <- function(token, datasetId, groupId, tableName) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/datasets/{datasetId}/tables/{tableName}"
  httr::PUT(glue::glue(path), config(token = token))
}
