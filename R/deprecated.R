#' Deprecated
#'
#' @description
#' `r lifecycle::badge('deprecated')`
#'
#' - `toy_emissions_profile_products()` and
#' `toy_emissions_profile_upstream_products()` are deprecated in favor of
#' `toy_emissions_profile_products_ecoinvent()` and
#' `toy_emissions_profile_upstream_products_ecoinvent()`, respectively.
#'
#' - The column `company_id` is now deprecated in all `toy_*companies()`. The
#' latest data uses `companies_id` and is available to you automatically when
#' you update the tiltIndicator package.
#'
#' @keywords internal
#' @name deprecated
#' @aliases NULL
#' @examples
#' toy_emissions_profile_products()
#' # ->
#' toy_emissions_profile_products_ecoinvent()
#'
#' toy_emissions_profile_upstream_products()
#' # ->
#' toy_emissions_profile_upstream_products_ecoinvent()
NULL

#' @rdname deprecated
#' @export
#' @keywords internal
toy_emissions_profile_products <- function() {
  lifecycle::deprecate_warn("0.0.0.9009", "toy_emissions_profile_products()", "toy_emissions_profile_products_ecoinvent()")
  deprecated_path("emissions_profile_products.csv.gz")
}

#' @rdname deprecated
#' @export
#' @keywords internal
toy_emissions_profile_upstream_products <- function() {
  lifecycle::deprecate_warn("0.0.0.9009", "toy_emissions_profile_upstream_products()", "toy_emissions_profile_upstream_products_ecoinvent()")
  deprecated_path("emissions_profile_upstream_products.csv.gz")
}
