local_snapshot <- function(.local_envir = parent.frame()) {
  use_released_data <- "0"
  op <- list(
    readr.show_col_types = FALSE,
    width = 1000,
    tiltToyData.company_id_cutoff = use_released_data
  )
  local_options(op, .local_envir = .local_envir)
}

local_cutoff <- function(cutoff, .local_envir = parent.frame()) {
  op <- list(tiltToyData.company_id_cutoff = cutoff)
  local_options(op, .local_envir = .local_envir)
}

company_id_cutoff <- function() {
  getOption(
    "tiltToyData.company_id_cutoff",
    default = c(tiltIndicator = "0.0.0.9102")
  )
}

compatible_companies_path <- function(file) {
  out <- toy_path(file)

  if (needs_retired_companies(file)) {
    warning_retired_company_id()
  }

  if (needs_deprecated_companies(file)) {
    warning_deprecated_company_id()
    out <- file.path(toy_path("deprecated"), file)
  }

  out
}

needs_retired_companies <- function(file) {
  needs_company_id() && is_emissions(file)
}

needs_deprecated_companies <- function(file) {
  needs_company_id() && !is_emissions(file)
}

is_emissions <- function(file) {
  grepl("^emissions", path_file(file))
}

warning_retired_company_id <- function() {
  rlang::warn(c(
    "Using data that is incompatible with your version of tiltIndicator.",
    x = "Old titlIndicator used `company_id` but it's now retired.",
    i = "Upgrade titlIndicator to use new data with `companies_id`."
  ), class = "retired_company_id")
}

warning_deprecated_company_id <- function() {
  rlang::warn(c(
    "Using deprecated data with `company_id` for backward compatibility.",
    i = "Upgrade titlIndicator to use new data with `companies_id`."
  ), class = "deprecated_company_id")
}

needs_company_id <- function() {
  packageVersion("tiltIndicator") <= company_id_cutoff()
}

format_robust_snapshot <- function(data) {
  row.names(data) <- NULL
  lapply(names(data), function(x) as.data.frame(data)[x])
}
