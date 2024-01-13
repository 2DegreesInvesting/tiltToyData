#' Deprecated
#'
#' @description
#' `r lifecycle::badge('deprecated')`
#'
#' The column `company_id` is now deprecated in all `toy_*companies()`. The
#' latest data uses `companies_id` and is available to you automatically when
#' you update the tiltIndicator package.
#'
#' @keywords internal
#' @name deprecated
#' @aliases NULL
NULL

#' Deprecated `toy_emissions_profile*_products()`
#'
#' @description
#' `r lifecycle::badge("deprecated")`
#'
#' @export
#' @keywords internal
#' @examples
#' toy_emissions_profile_products()
#' # ->
#' toy_emissions_profile_products_ecoinvent()
#'
#' toy_emissions_profile_upstream_products()
#' # ->
#' toy_emissions_profile_upstream_products_ecoinvent()
toy_emissions_profile_products <- function() {
  lifecycle::deprecate_warn("0.0.0.9009", "toy_emissions_profile_products()", "toy_emissions_profile_products_ecoinvent()")
  deprecated_path("emissions_profile_products.csv.gz")
}

#' @rdname toy_emissions_profile_products
#' @export
#' @keywords internal
toy_emissions_profile_upstream_products <- function() {
  lifecycle::deprecate_warn("0.0.0.9009", "toy_emissions_profile_upstream_products()", "toy_emissions_profile_upstream_products_ecoinvent()")
  deprecated_path("emissions_profile_upstream_products.csv.gz")
}
