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
