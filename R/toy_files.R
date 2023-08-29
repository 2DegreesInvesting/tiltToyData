#' @export
toy_files.default <- function(pattern = NULL) {
  list.files(system.file("extdata", package = "tiltToyData"), pattern = pattern)
}

#' @export
toy_path.character <- function(file) {
  system.file("extdata", file, package = "tiltToyData", mustWork = TRUE)
}
