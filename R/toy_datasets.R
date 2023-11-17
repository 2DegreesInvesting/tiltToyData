#' @rdname toy_files
#' @export
#' @examples
#' toy_emissions_profile_any_companies()
#'
#' toy_emissions_profile_products()
#'
#' toy_emissions_profile_upstream_products()
#'
#' toy_sector_profile_any_scenarios()
#'
#' toy_sector_profile_companies()
#'
#' toy_sector_profile_upstream_companies()
#'
#' toy_sector_profile_upstream_products()
toy_emissions_profile_any_companies <- function() {
  compatible_path(toy_file("emissions_profile_any_companies"))
}

#' @rdname toy_files
#' @export
toy_emissions_profile_products <- function() {
  toy_path(toy_file("emissions_profile_products"))
}

#' @rdname toy_files
#' @export
toy_emissions_profile_upstream_products <- function() {
  toy_path(toy_file("emissions_profile_upstream_products"))
}

#' @rdname toy_files
#' @export
toy_sector_profile_any_scenarios <- function() {
  toy_path(toy_file("sector_profile_any_scenarios"))
}

#' @rdname toy_files
#' @export
toy_sector_profile_companies <- function() {
  compatible_path(toy_file("sector_profile_companies"))
}

#' @rdname toy_files
#' @export
toy_sector_profile_upstream_companies <- function() {
  toy_path(toy_file("sector_profile_upstream_companies"))
}

#' @rdname toy_files
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
