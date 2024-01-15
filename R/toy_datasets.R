#' @rdname toy_files
#' @export
#' @examples
#' toy_emissions_profile_any_companies()
#'
#' toy_emissions_profile_products_ecoinvent()
#'
#' toy_emissions_profile_upstream_products_ecoinvent()
#'
#' toy_sector_profile_any_scenarios()
#'
#' toy_sector_profile_companies()
#'
#' toy_sector_profile_upstream_companies()
#'
#' toy_sector_profile_upstream_products()
#'
#' toy_europages_companies()
#'
#' toy_ecoinvent_activities()
#'
#' toy_ecoinvent_inputs()
#'
#' toy_ecoinvent_europages()
#'
#' toy_isic_name()
toy_emissions_profile_any_companies <- function() {
  compatible_companies_path(toy_file("emissions_profile_any_companies"))
}

#' @rdname toy_files
#' @export
toy_emissions_profile_products_ecoinvent <- function() {
  toy_path(toy_file("emissions_profile_products_ecoinvent"))
}

#' @rdname toy_files
#' @export
toy_emissions_profile_upstream_products_ecoinvent <- function() {
  toy_path(toy_file("emissions_profile_upstream_products_ecoinvent"))
}

#' @rdname toy_files
#' @export
toy_sector_profile_any_scenarios <- function() {
  toy_path(toy_file("sector_profile_any_scenarios"))
}

#' @rdname toy_files
#' @export
toy_sector_profile_companies <- function() {
  compatible_companies_path(toy_file("sector_profile_companies"))
}

#' @rdname toy_files
#' @export
toy_sector_profile_upstream_companies <- function() {
  compatible_companies_path(toy_file("sector_profile_upstream_companies"))
}

#' @rdname toy_files
#' @export
toy_sector_profile_upstream_products <- function() {
  toy_path(toy_file("sector_profile_upstream_products"))
}

#' @rdname toy_files
#' @export
toy_europages_companies <- function() {
  toy_path(toy_file("europages_companies"))
}

#' @rdname toy_files
#' @export
toy_ecoinvent_activities <- function() {
  toy_path(toy_file("ecoinvent_activities"))
}

#' @rdname toy_files
#' @export
toy_ecoinvent_inputs <- function() {
  toy_path(toy_file("ecoinvent_inputs"))
}

#' @rdname toy_files
#' @export
toy_ecoinvent_europages <- function() {
  toy_path(toy_file("ecoinvent_europages"))
}

#' @rdname toy_files
#' @export
toy_isic_name <- function() {
  toy_path(toy_file("isic_name"))
}

toy_file <- function(x) {
  sprintf("%s.%s", x, toy_ext())
}

toy_ext <- function() {
  "csv.gz"
}
