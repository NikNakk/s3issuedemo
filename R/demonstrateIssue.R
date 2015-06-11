#' Demonstrates the issue with using S3 methods and Import with a package that doesn't use S3method()
#'
#' @param loadLibrary determines whether to use library() to attach the rhdf5 package to the global environment
#' @export
#'
#' @examples
#' \dontrun{
#' demonstrateIssue()
#' demonstrateIssue(loadLibrary = TRUE)
#' }
demonstrateIssue <- function(loadLibrary = FALSE) {
  if (loadLibrary) {
    library("rhdf5")
  } else {
    if ("rhdf5" %in% basename(searchpaths())) {
      detach("package:rhdf5")
    }
  }
  rhdf5::h5createFile("test.h5")
  on.exit({rhdf5::H5close()
    file.remove("test.h5")
    })
  rhdf5::h5write(1:4, "test.h5", "test")
  invisible()
}
