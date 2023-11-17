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
  if (needs_company_id()) {
    file.path(toy_path("deprecated"), file)
  } else {
    toy_path(file)
  }
}

needs_company_id <- function() {
  packageVersion("tiltIndicator") <= company_id_cutoff()
}
