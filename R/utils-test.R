read_toy_dataset <- function(dataset, ...) {
  file <- sprintf("%s.%s", dataset, toy_ext())
  path <- toy_dataset(file)
  read_csv(path, show_col_types = FALSE, ...)
}

toy_ext <- function() {
  "csv.gz"
}

snapshot_witdh <- function() {
  list(width = 1000)
}
