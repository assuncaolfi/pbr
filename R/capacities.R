#' Returns a list of capacities the user has access to.Required scope: Capacity.Read.All or Capacity.ReadWrite.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
get_capacities <- function(token, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/capacities"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns the current state of a workload and if the workload is enabled also returns the maximum memory percentage that the workload can consume.Required scope: Capacity.Read.All or Capacity.ReadWrite.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
get_workload <- function(token, capacityId, workloadName, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/capacities/{capacityId}/Workloads/{workloadName}"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Returns the current state of the specified capacity workloads, if a workload is enabled also returns the maximum memory percentage that the workload can consume.Required scope: Capacity.Read.All or Capacity.ReadWrite.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
get_workloads <- function(token, capacityId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/capacities/{capacityId}/Workloads"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Assigns "My Workspace" to the specified capacity.Note: To perform this operation, the user must have admin or assign permissions on the capacity. To unassign "My Workspace" from a capacity, Empty Guid (00000000-0000-0000-0000-000000000000) should be provided as capacityId.  Required scope: Capacity.ReadWrite.All and Workspace.ReadWrite.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
groups_assignmyworkspacetocapacity <- function(token, capacityId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/AssignToCapacity"
  response <- httr::POST(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = list(capacityId = capacityId))
  process(response, output)
}

#' Assigns the specified workspace to the specified capacity.Note: To perform this operation, the user must be admin on the specified workspace and have admin or assign permissions on the capacity. To unassign the specified workspace from a capacity, Empty Guid (00000000-0000-0000-0000-000000000000) should be provided as capacityId.  Required scope: Capacity.ReadWrite.All and Workspace.ReadWrite.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
groups_assigntocapacity <- function(token, groupId, capacityId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/AssignToCapacity"
  response <- httr::POST(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = list(capacityId = capacityId))
  process(response, output)
}

#' Gets the status of the assignment to capacity operation of the specified workspace.Note: To perform this operation, the user must be admin on the specified workspace. Required scope: Workspace.Read.All and Workspace.ReadWrite.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
groups_capacityassignmentstatus <- function(token, groupId, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/groups/{groupId}/CapacityAssignmentStatus"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Gets the status of "My Workspace" assignment to capacity operation.Note: Required scope: Workspace.Read.All and Workspace.ReadWrite.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
groups_capacityassignmentstatusmyworkspace <- function(token, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/CapacityAssignmentStatus"
  response <- httr::GET(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = FALSE)
  process(response, output)
}

#' Changes the state of a specific workload to Enabled or Disabled. When enabling a workload the maximum memory percentage that the workload can consume must be set.Required scope: Capacity.ReadWrite.All 
#' @param groupId OK 
#' @return A `data.frame` object. 
#' @export
patch_workload <- function(token, capacityId, workloadName, maxMemoryPercentageSetByUser, state, output = "value") {
  path <- "https://api.powerbi.com/v1.0/myorg/capacities/{capacityId}/Workloads/{workloadName}"
  response <- httr::PATCH(url = glue::glue(path),
                             config = httr::config(token = token),
                             body = list(maxMemoryPercentageSetByUser = maxMemoryPercentageSetByUser, state = state))
  process(response, output)
}
