#' Creates a temporary blob storage to be used to import large .pbix files larger than 1 GB and up to 10 GB.
#' To import large .pbix files, create a temporary upload location and upload the .pbix file using the shared access signature (SAS) url from the response, and then call Post Import and specify 'fileUrl' to be the SAS url in the Request BodyNote: Import large .pbix files is only available for workspaces on premium capacity and for .pbix files that are between 1 GB and 10 GB. Required scope: Dataset.ReadWrite.All 
#' @param  OK 
#' @return A `data.frame` object.


#' Creates a temporary blob storage to be used to import large .pbix files larger than 1 GB and up to 10 GB.
#' To import large .pbix files, create a temporary upload location and upload the .pbix file using the shared access signature (SAS) url from the response, and then call Post Import In Group and specify 'fileUrl' to be the SAS url in the Request Body.Note: Import large .pbix files is only available for workspaces on premium capacity and for .pbix files that is between 1 GB and 10 GB. Required scope: Dataset.ReadWrite.All 
#' @param groupId The workspace id 
#' @return A `data.frame` object.
create_temporary_upload_location_in_group <- function(token, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/imports/createTemporaryUploadLocation"
  httr::POST(glue::glue(path), config(token = token))
}

#' Returns the specified import from "My Workspace".Required scope: Dataset.ReadWrite.All or Dataset.Read.All 
#' @param importId The import id 
#' @return A `data.frame` object.
get_import <- function(token, importId) {
  path <- "https://api.powerbi.com/v1.0/myorg/imports/{importId}"
  httr::GET(glue::glue(path), config(token = token))
}

#' Returns the specified import from the specified workspace.Required scope: Dataset.ReadWrite.All or Dataset.Read.All 
#' @param groupId The workspace id
#' @param importId The import id 
#' @return A `data.frame` object.
get_import_in_group <- function(token, groupId, importId) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/imports/{importId}"
  httr::GET(glue::glue(path), config(token = token))
}

#' Returns a list of imports from "My Workspace".Required scope: Dataset.ReadWrite.All or Dataset.Read.All 
#' @param  OK 
#' @return A `data.frame` object.


#' Returns a list of imports from the specified workspace.Required scope: Dataset.ReadWrite.All or Dataset.Read.All 
#' @param groupId The workspace id 
#' @return A `data.frame` object.
get_imports_in_group <- function(token, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/imports"
  httr::GET(glue::glue(path), config(token = token))
}

#' Creates new content on "My Workspace" from .pbix, Excel, Rdl or file path in OneDrive for Business.Required scope: Dataset.ReadWrite.All  
#' @param nameConflict Determines what to do if a dataset with the same name already exists. Default value is 'Ignore'.Only Abort and Overwrite are supported with Rdl files.
#' @param skipReport Determines whether to skip report import, if specified value must be 'true'. Only supported for PBIX files.
#' @param datasetDisplayName The display name of the dataset, should include file extension. Not supported when importing from OneDrive for Business. 
#' @return A `data.frame` object.
post_import <- function(token, nameConflict, skipReport, datasetDisplayName) {
  path <- "https://api.powerbi.com/v1.0/myorg/imports?datasetDisplayName={datasetDisplayName}"
  httr::POST(glue::glue(path), config(token = token))
}

#' Creates new content on the specified workspace from .pbix, .json, Excel, Rdl, or file path in OneDrive for Business.Required scope: Dataset.ReadWrite.All  
#' @param groupId The workspace id
#' @param nameConflict Determines what to do if a dataset with the same name already exists. Default value is 'Ignore'.Only Abort and Overwrite are supported with Rdl files.Only Abort and GenerateUniqueName are supported with dataflow model.json files.
#' @param skipReport Determines whether to skip report import, if specified value must be 'true'. Only supported for PBIX files.
#' @param datasetDisplayName The display name of the dataset should include file extension. Not supported when importing from OneDrive for Business. For importing or creating dataflows, this parameter should be hardcoded to model.json. 
#' @return A `data.frame` object.
post_import_in_group <- function(token, groupId, nameConflict, skipReport, datasetDisplayName) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/imports?datasetDisplayName={datasetDisplayName}"
  httr::POST(glue::glue(path), config(token = token))
}
