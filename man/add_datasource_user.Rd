% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gateways.R
\name{add_datasource_user}
\alias{add_datasource_user}
\title{Grants or updates the permissions required to use the specified datasource for the specified user.Required scope: Dataset.ReadWrite.All}
\usage{
add_datasource_user(
  token,
  datasourceId,
  gatewayId,
  datasourceAccessRight,
  displayName,
  emailAddress,
  identifier,
  principalType,
  output = "value"
)
}
\arguments{
\item{groupId}{OK}
}
\value{
A `data.frame` object.
}
\description{
Grants or updates the permissions required to use the specified datasource for the specified user.Required scope: Dataset.ReadWrite.All
}
