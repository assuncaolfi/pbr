% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/apps.R, R/dashboards.R
\name{get_dashboard}
\alias{get_dashboard}
\title{Returns the specified dashboard from the specified app.Required scope: Dashboard.ReadWrite.All or Dashboard.Read.All}
\usage{
get_dashboard(token, dashboardId, output = "value")

get_dashboard(token, dashboardId, output = "value")
}
\arguments{
\item{groupId}{OK}
}
\value{
A `data.frame` object.

A `data.frame` object.
}
\description{
Returns the specified dashboard from the specified app.Required scope: Dashboard.ReadWrite.All or Dashboard.Read.All

Returns the specified dashboard from "My Workspace".Required scope: Dashboard.ReadWrite.All or Dashboard.Read.All
}
