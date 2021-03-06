% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/push_datasets.R
\name{datasets_puttable}
\alias{datasets_puttable}
\title{Updates the metadata and schema for the specified table within the specified dataset from "My Workspace".Note: This API supports only Push datasets. Required scope: Dataset.ReadWrite.All}
\usage{
datasets_puttable(
  token,
  datasetId,
  tableName,
  columns,
  measures,
  name,
  rows,
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
Updates the metadata and schema for the specified table within the specified dataset from "My Workspace".Note: This API supports only Push datasets. Required scope: Dataset.ReadWrite.All
}
