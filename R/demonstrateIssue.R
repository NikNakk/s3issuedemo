#' Demonstrates the issue with using S3 methods and Import with a package that doesn't use S3method()
#'
#' @export
#'
#' @examples
#' \dontrun{
#' demonstrateIssue()
#' }
demonstrateIssue <- function() {
  rhdf5::h5createFile("test.h5")
  rhdf5::h5write(1:4, "test.h5", "test")
  invisible()
}
