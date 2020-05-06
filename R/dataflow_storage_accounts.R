#' Returns a list of dataflow storage accounts the user has access to.Required scope: StorageAccount.Read.All or StorageAccount.ReadWrite.All 
#' @param  OK 
#' @return A `data.frame` object. 
#' @export
get_dataflow_storage_accounts <- function(token) {
  path <- "https://api.powerbi.com/v1.0/myorg/dataflowStorageAccounts"
  httr::GET(glue::glue(path), httr::config(token = token))
}

#' Assigns the specified workspace to the specified dataflow storage account.Note: To perform this operation, the user must be an admin on the specified workspace and the Power BI dataflow storage account must be enabled. To unassign the specified workspace from a Power BI dataflow storage account, an empty GUID (00000000-0000-0000-0000-000000000000) should be provided as dataflowStorageId.Required scope: StorageAccount.ReadWrite.All and Workspace.ReadWrite.All 
#' @param groupId The workspace id 
#' @return A `data.frame` object. 
#' @export
groups_assigntodataflowstorage <- function(token, groupId) {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/AssignToDataflowStorage"
  httr::POST(glue::glue(path), httr::config(token = token))
}
