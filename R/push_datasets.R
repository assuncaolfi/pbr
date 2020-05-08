#' Deletes all rows from the specified table within the specified dataset from "My Workspace".Note: this API supports only Push datasets. Required scope: Dataset.ReadWrite.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
datasets_deleterows <- function(token, datasetId, tableName, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/datasets/{datasetId}/tables/{tableName}/rows"
  response <- httr::DELETE(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Deletes all rows from the specified table, within the specified dataset, from the specified workspace.Note: This API supports only Push datasets. Required scope: Dataset.ReadWrite.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
datasets_deleterowsingroup <- function(token, datasetId, groupId, tableName, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/datasets/{datasetId}/tables/{tableName}/rows"
  response <- httr::DELETE(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns a list of tables tables within the specified dataset from "My Workspace".Note: This API supports only Push datasets. Required scope: Dataset.ReadWrite.All or Dataset.Read.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
datasets_gettables <- function(token, datasetId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/datasets/{datasetId}/tables"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns a list of tables within the specified dataset from the specified workspace.Note: This API supports only Push datasets. Required scope: Dataset.ReadWrite.All or Dataset.Read.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
datasets_gettablesingroup <- function(token, datasetId, groupId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/datasets/{datasetId}/tables"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Creates a new dataset on "My Workspace".Note: This API supports only Push datasets.Required scope: Dataset.ReadWrite.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
datasets_postdataset <- function(token, defaultRetentionPolicy = NULL, datasources, defaultMode, name, relationships, tables, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/datasets"
  response <- httr::POST(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = list(datasources = datasources, defaultMode = defaultMode, name = name, relationships = relationships, tables = tables))
  process(response, output)
}

#' Creates a new dataset in the specified workspace.Note: This API supports only Push datasets.Required scope: Dataset.ReadWrite.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
datasets_postdatasetingroup <- function(token, groupId, defaultRetentionPolicy, datasources, defaultMode, name, relationships, tables, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/datasets"
  response <- httr::POST(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = list(datasources = datasources, defaultMode = defaultMode, name = name, relationships = relationships, tables = tables))
  process(response, output)
}

#' Adds new data rows to the specified table within the specified dataset from "My Workspace".Note: This API supports only Push datasets. REST API Limitations: See Power BI REST API limitations. Required scope: Dataset.ReadWrite.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
datasets_postrows <- function(token, datasetId, tableName, rows, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/datasets/{datasetId}/tables/{tableName}/rows"
  response <- httr::POST(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = list(rows = rows))
  process(response, output)
}

#' Adds new data rows to the specified table, within the specified dataset, from the specified workspace.Note: This API supports only Push datasets. REST API Limitations: See Power BI REST API limitations. Required scope: Dataset.ReadWrite.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
datasets_postrowsingroup <- function(token, datasetId, groupId, tableName, rows, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/datasets/{datasetId}/tables/{tableName}/rows"
  response <- httr::POST(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = list(rows = rows))
  process(response, output)
}

#' Updates the metadata and schema for the specified table within the specified dataset from "My Workspace".Note: This API supports only Push datasets. Required scope: Dataset.ReadWrite.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
datasets_puttable <- function(token, datasetId, tableName, columns, measures, name, rows, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/datasets/{datasetId}/tables/{tableName}"
  response <- httr::PUT(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = list(columns = columns, measures = measures, name = name, rows = rows))
  process(response, output)
}

#' Updates the metadata and schema for the specified table, within the specified dataset, from the specified workspace.Note: This API supports only Push datasets. Required scope: Dataset.ReadWrite.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
datasets_puttableingroup <- function(token, datasetId, groupId, tableName, columns, measures, name, rows, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/datasets/{datasetId}/tables/{tableName}"
  response <- httr::PUT(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = list(columns = columns, measures = measures, name = name, rows = rows))
  process(response, output)
}
