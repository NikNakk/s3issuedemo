% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/demonstrateIssue.R
\name{demonstrateIssue}
\alias{demonstrateIssue}
\title{Demonstrates the issue with using S3 methods and Import with a package that doesn't use S3method()}
\usage{
demonstrateIssue(loadLibrary = FALSE)
}
\arguments{
\item{loadLibrary}{determines whether to use library() to attach the rhdf5 package to the global environment}
}
\description{
Demonstrates the issue with using S3 methods and Import with a package that doesn't use S3method()
}
\examples{
\dontrun{
demonstrateIssue()
demonstrateIssue(loadLibrary = TRUE)
}
}

