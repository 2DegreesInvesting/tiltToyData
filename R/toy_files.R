#' Paths to toy datasets
#'
#' This package comes bundled with a number of toy datasets in its
#' 'inst/extdata' directory. Use `toy_files()` to list all the available
#' datasets and `toy_path()` to retrieve the path to one example.
#'
#' @param file File.
#' @param pattern A regular expression of filenames to match. If `NULL` all
#'   available files are returned. listed.
#'
#' @return A character.
#' @export
#'
#' @examples
#' toy_files()
#'
#' toy_path(toy_files()[[1]])
#'
toy_files <- function(pattern = NULL) {
  extdata <- system.file("extdata", package = "tiltToyData")
  paths <- dir_ls(extdata, regexp = pattern, type = "file")
  path_file(paths)
}

#' @export
#' @rdname toy_files
toy_path <- function(file) {
  system.file("extdata", file, package = "tiltToyData", mustWork = TRUE)
}
