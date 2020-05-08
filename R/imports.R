#' Creates a temporary blob storage to be used to import large .pbix files larger than 1 GB and up to 10 GB.
#' To import large .pbix files, create a temporary upload location and upload the .pbix file using the shared access signature (SAS) url from the response, and then call Post Import and specify 'fileUrl' to be the SAS url in the Request BodyNote: Import large .pbix files is only available for workspaces on premium capacity and for .pbix files that are between 1 GB and 10 GB. Required scope: Dataset.ReadWrite.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
create_temporary_upload_location <- function(token, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/imports/createTemporaryUploadLocation"
  response <- httr::POST(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Creates a temporary blob storage to be used to import large .pbix files larger than 1 GB and up to 10 GB.
#' To import large .pbix files, create a temporary upload location and upload the .pbix file using the shared access signature (SAS) url from the response, and then call Post Import In Group and specify 'fileUrl' to be the SAS url in the Request Body.Note: Import large .pbix files is only available for workspaces on premium capacity and for .pbix files that is between 1 GB and 10 GB. Required scope: Dataset.ReadWrite.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
create_temporary_upload_location_in_group <- function(token, groupId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/imports/createTemporaryUploadLocation"
  response <- httr::POST(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns the specified import from "My Workspace".Required scope: Dataset.ReadWrite.All or Dataset.Read.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
get_import <- function(token, importId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/imports/{importId}"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns the specified import from the specified workspace.Required scope: Dataset.ReadWrite.All or Dataset.Read.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
get_import_in_group <- function(token, groupId, importId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/imports/{importId}"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns a list of imports from "My Workspace".Required scope: Dataset.ReadWrite.All or Dataset.Read.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
get_imports <- function(token, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/imports"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns a list of imports from the specified workspace.Required scope: Dataset.ReadWrite.All or Dataset.Read.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
get_imports_in_group <- function(token, groupId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/imports"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Creates new content on "My Workspace" from .pbix, Excel, Rdl or file path in OneDrive for Business.Required scope: Dataset.ReadWrite.All  
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
post_import <- function(token, nameConflict, skipReport, datasetDisplayName, connectionType, filePath, fileUrl, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/imports?datasetDisplayName={datasetDisplayName}"
  response <- httr::POST(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = list(connectionType = connectionType, filePath = filePath, fileUrl = fileUrl))
  process(response, output)
}

#' Creates new content on the specified workspace from .pbix, .json, Excel, Rdl, or file path in OneDrive for Business.Required scope: Dataset.ReadWrite.All  
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
post_import_in_group <- function(token, groupId, nameConflict, skipReport, datasetDisplayName, connectionType, filePath, fileUrl, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/imports?datasetDisplayName={datasetDisplayName}"
  response <- httr::POST(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = list(connectionType = connectionType, filePath = filePath, fileUrl = fileUrl))
  process(response, output)
}
