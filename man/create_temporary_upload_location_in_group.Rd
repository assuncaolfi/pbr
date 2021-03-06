% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/imports.R
\name{create_temporary_upload_location_in_group}
\alias{create_temporary_upload_location_in_group}
\title{Creates a temporary blob storage to be used to import large .pbix files larger than 1 GB and up to 10 GB.
To import large .pbix files, create a temporary upload location and upload the .pbix file using the shared access signature (SAS) url from the response, and then call Post Import In Group and specify 'fileUrl' to be the SAS url in the Request Body.Note: Import large .pbix files is only available for workspaces on premium capacity and for .pbix files that is between 1 GB and 10 GB. Required scope: Dataset.ReadWrite.All}
\usage{
create_temporary_upload_location_in_group(token, groupId, output = "value")
}
\arguments{
\item{groupId}{OK}
}
\value{
A `data.frame` object.
}
\description{
Creates a temporary blob storage to be used to import large .pbix files larger than 1 GB and up to 10 GB.
To import large .pbix files, create a temporary upload location and upload the .pbix file using the shared access signature (SAS) url from the response, and then call Post Import In Group and specify 'fileUrl' to be the SAS url in the Request Body.Note: Import large .pbix files is only available for workspaces on premium capacity and for .pbix files that is between 1 GB and 10 GB. Required scope: Dataset.ReadWrite.All
}
