#' Get path to toy datasets
#'
#' This package comes bundled with a number of toy datasets in its
#' 'inst/extdata' directory. Use `toy_datasets()` to list all the available
#' datasets and `toy_dataset()` to retrieve the path to one example.
#'
#' @param file File.
#' @param pattern A regular expression of filenames to match. If `NULL` all
#'   available files are returned. listed.
#'
#' @return A character.
#' @export
#'
#' @examples
#' files <- toy_datasets()
#' files
#'
#' toy_dataset(files[[1]])
toy_datasets <- function (pattern = NULL) {
  list.files(system.file("extdata", package = "tiltToyData"), pattern = pattern)
}

#' @export
#' @rdname toy_datasets
toy_dataset <- function(file) {
  system.file("extdata", file, package = "tiltToyData", mustWork = TRUE)
}

