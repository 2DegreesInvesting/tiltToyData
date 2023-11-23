#' Deprecated
#'
#' @description
#' `r lifecycle::badge('deprecated')`
#'
#' * The column `company_id` is now deprecated in all
#' `toy_sector_profile*companies()`. The latest data uses `companies_id` and is
#' available to you automatically when you update the tiltIndicator package.
#'
#' * The data accessible via `toy_emissions_profile_any_companies()` up to
#' v0.0.0.9004 is now deprecated, and the previously deprecated data with
#' `company_id` is now retired.
#'
#' @keywords internal
#' @name deprecated
#' @aliases NULL
#'
#' @examples
#' fs::dir_ls(toy_path("deprecated"))
NULL
