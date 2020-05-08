#' Clones the specified report from "My Workspace".If after cloning the report and its dataset reside in two different upgraded workspaces or "My Workspace", a shared dataset will be created in the report's workspace. Reports with live connection will lose the live connection when cloning, and will have a direct binding to the target dataset.Required scope: Content.CreateTo set the permissions scope, see Register an app. Required permissions: Report - Write permissions. Target dataset (if provided) - Build permissions. 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
clone_report <- function(token, reportId, name, targetModelId, targetWorkspaceId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/reports/{reportId}/Clone"
  response <- httr::POST(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = list(name = name, targetModelId = targetModelId, targetWorkspaceId = targetWorkspaceId))
  process(response, output)
}

#' Clones the specified report from the specified workspace.If after cloning the report and its dataset reside in two different upgraded workspaces or "My Workspace", a shared dataset will be created in the report's workspace. Reports with live connection will lose the live connection when cloning, and will have a direct binding to the target dataset.Required scope: Content.Create Required permissions: Report - Write permissions. Target dataset (if provided) - Build permissions 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
clone_report_in_group <- function(token, groupId, reportId, name, targetModelId, targetWorkspaceId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/reports/{reportId}/Clone"
  response <- httr::POST(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = list(name = name, targetModelId = targetModelId, targetWorkspaceId = targetWorkspaceId))
  process(response, output)
}

#' Deletes the specified report from "My Workspace".Required scope: Report.ReadWrite.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
delete_report <- function(token, reportId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/reports/{reportId}"
  response <- httr::DELETE(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Deletes the specified report from the specified workspace.Required scope: Report.ReadWrite.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
delete_report_in_group <- function(token, groupId, reportId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/reports/{reportId}"
  response <- httr::DELETE(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Exports the specified report from "My Workspace" to a .pbix file.Required scope: Report.ReadWrite.All or Report.Read.All  
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
export_report <- function(token, reportId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/reports/{reportId}/Export"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Exports the specified report from the specified workspace to a .pbix file.Required scope: Report.ReadWrite.All or Report.Read.All  
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
export_report_in_group <- function(token, groupId, reportId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/reports/{reportId}/Export"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Exports the specified report from "My Workspace" to the requested format.Required scope: (all of the below)  
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
export_to_file <- function(token, reportId, format, paginatedReportConfiguration, powerBIReportConfiguration, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/reports/{reportId}/ExportTo"
  response <- httr::POST(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = list(format = format, paginatedReportConfiguration = paginatedReportConfiguration, powerBIReportConfiguration = powerBIReportConfiguration))
  process(response, output)
}

#' Exports the specified report from the specified workspace to the requested format.Required scope: (all of the below)  
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
export_to_file_in_group <- function(token, groupId, reportId, format, paginatedReportConfiguration, powerBIReportConfiguration, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/reports/{reportId}/ExportTo"
  response <- httr::POST(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = list(format = format, paginatedReportConfiguration = paginatedReportConfiguration, powerBIReportConfiguration = powerBIReportConfiguration))
  process(response, output)
}

#' Returns a list of datasources for the specified RDL report from "My Workspace".Required scope: Report.ReadWrite.All or Report.Read.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
get_datasources <- function(token, reportId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/reports/{reportId}/datasources"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns a list of datasources for the specified RDL report from the specified workspace.Required scope: Report.ReadWrite.All or Reportt.Read.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
get_datasources_in_group <- function(token, groupId, reportId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/reports/{reportId}/datasources"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns the status of the Export to file job from "My Workspace".Required scope: Report.ReadWrite.All or Report.Read.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
get_export_to_file_status <- function(token, exportId, reportId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/reports/{reportId}/exports/{exportId}"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns the status of the Export to file job from the specified workspace.Required scope: Report.ReadWrite.All or Report.Read.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
get_export_to_file_status_in_group <- function(token, exportId, groupId, reportId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/reports/{reportId}/exports/{exportId}"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns the file of the Export to file job of the specified report from "My Workspace".Required scope: Report.ReadWrite.All or Report.Read.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
get_file_of_export_to_file <- function(token, exportId, reportId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/reports/{reportId}/exports/{exportId}/file"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns the file of the Export to file job of the specified report from the specified group.Required scope: Report.ReadWrite.All or Report.Read.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
get_file_of_export_to_file_in_group <- function(token, exportId, groupId, reportId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/reports/{reportId}/exports/{exportId}/file"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns the specified page within the specified report from "My Workspace".Required scope: Report.ReadWrite.All or Report.Read.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
get_page <- function(token, pageName, reportId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/reports/{reportId}/pages/{pageName}"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns the specified page within the specified report from the specified workspace.Required scope: Report.ReadWrite.All or Report.Read.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
get_page_in_group <- function(token, groupId, pageName, reportId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/reports/{reportId}/pages/{pageName}"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns a list of pages within the specified report from "My Workspace".Required scope: Report.ReadWrite.All or Report.Read.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
get_pages <- function(token, reportId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/reports/{reportId}/pages"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns a list of pages within the specified report from the specified workspace.Required scope: Report.ReadWrite.All or Report.Read.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
get_pages_in_group <- function(token, groupId, reportId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/reports/{reportId}/pages"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns the specified report from "My Workspace".Required scope: Report.ReadWrite.All or Report.Read.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
get_report <- function(token, reportId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/reports/{reportId}"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns the specified report from the specified workspace.Required scope: Report.ReadWrite.All or Report.Read.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
get_report_in_group <- function(token, groupId, reportId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/reports/{reportId}"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns a list of reports from "My Workspace".Required scope: Report.ReadWrite.All or Report.Read.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
get_reports <- function(token, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/reports"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns a list of reports from the specified workspace.Required scope: Report.ReadWrite.All or Report.Read.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
get_reports_in_group <- function(token, groupId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/reports"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Rebinds the specified report from "My Workspace" to the requested dataset.If the dataset resides in a different upgraded workspace, a shared dataset will be created in "My Workspace".Reports with live connection will lose the live connection when rebinding, and will have a direct binding to the target dataset.Required scope: Report.ReadWrite.All Required permissions: Report - Write permissions. Target dataset - Build permissions. 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
rebind_report <- function(token, reportId, datasetId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/reports/{reportId}/Rebind"
  response <- httr::POST(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = list(datasetId = datasetId))
  process(response, output)
}

#' Rebinds the specified report from the specified workspace to the requested dataset.If the dataset resides in a different upgraded workspace or in "My Workspace", a shared dataset will be created in the report's workspace.Reports with live connection will lose the live connection when rebinding, and will have a direct binding to the target dataset.Required scope: Report.ReadWrite.All Required permissions: Report - Write permissions. Target dataset - Build permissions 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
rebind_report_in_group <- function(token, groupId, reportId, datasetId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/reports/{reportId}/Rebind"
  response <- httr::POST(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = list(datasetId = datasetId))
  process(response, output)
}

#' Updates the specified report from "My Workspace" to have the same content as the report in the request body.Required scope: Report.ReadWrite.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
update_report_content <- function(token, reportId, sourceReport, sourceType, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/reports/{reportId}/UpdateReportContent"
  response <- httr::POST(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = list(sourceReport = sourceReport, sourceType = sourceType))
  process(response, output)
}

#' Updates the specified report from the specified workspace to have the same content as the specified report in the request body.Required scope: Report.ReadWrite.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
update_report_content_in_group <- function(token, groupId, reportId, sourceReport, sourceType, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/reports/{reportId}/UpdateReportContent"
  response <- httr::POST(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = list(sourceReport = sourceReport, sourceType = sourceType))
  process(response, output)
}
