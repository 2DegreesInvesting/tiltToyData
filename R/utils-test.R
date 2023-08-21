read_toy_dataset <- function(dataset, ...) {
  file <- toy_file(dataset)
  path <- toy_path(file)
  read_csv(path, show_col_types = FALSE, ...)
}

toy_file <- function(x) {
  sprintf("%s.%s", x, toy_ext())
}

toy_ext <- function() {
  "csv.gz"
}

snapshot_witdh <- function() {
  list(width = 1000)
}
