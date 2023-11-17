local_snapshot <- function(.local_envir = parent.frame()) {
  op <- append(read_quietly(), print_widely())
  local_options(op, .local_envir = .local_envir)
}

read_quietly <- function() {
  list(readr.show_col_types = FALSE)
}

print_widely <- function() {
  list(width = 1000)
}

needs_company_id <- function() {
  packageVersion("tiltIndicator") <= company_id_cutoff()
}

company_id_cutoff <- function() {
  getOption(
    "tiltToyData.company_id_cutoff",
    default = c(tiltIndicator = "0.0.0.9102")
  )
}

local_cutoff <- function(cutoff, .local_envir = parent.frame()) {
  local_options(
    list(tiltToyData.company_id_cutoff = cutoff), .local_envir = .local_envir
  )
}

