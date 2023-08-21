#' Toy datasets
#'
#' @name toy_datasets
NULL

#' @rdname toy_datasets
#' @export
toy_emissions_profile_any_companies <- function() {
  toy_path(toy_file("emissions_profile_any_companies"))
}

#' @rdname toy_datasets
#' @export
toy_emissions_profile_products <- function() {
  toy_path(toy_file("emissions_profile_products"))
}

#' @rdname toy_datasets
#' @export
toy_emissions_profile_upstream_products <- function() {
  toy_path(toy_file("emissions_profile_upstream_products"))
}

#' @rdname toy_datasets
#' @export
toy_sector_profile_any_scenarios <- function() {
  toy_path(toy_file("sector_profile_any_scenarios"))
}

#' @rdname toy_datasets
#' @export
toy_sector_profile_companies <- function() {
  toy_path(toy_file("sector_profile_companies"))
}

#' @rdname toy_datasets
#' @export
toy_sector_profile_upstream_companies <- function() {
  toy_path(toy_file("sector_profile_upstream_companies"))
}

#' @rdname toy_datasets
#' @export
toy_sector_profile_upstream_products <- function() {
  toy_path(toy_file("sector_profile_upstream_products"))
}

toy_file <- function(x) {
  sprintf("%s.%s", x, toy_ext())
}

toy_ext <- function() {
  "csv.gz"
}
