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

needs_company_id <- function() {
  packageVersion("tiltIndicator") <= company_id_cutoff()
}

company_id_cutoff <- function() {
  getOption(
    "tiltToyData.company_id_cutoff", default = c(tiltIndicator = "0.0.0.9102")
  )
}

