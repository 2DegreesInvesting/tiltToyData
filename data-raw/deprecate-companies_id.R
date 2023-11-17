devtools::load_all()
library(tidyverse, warn.conflicts = FALSE)
library(fs)

files <- c(
  "emissions_profile_any_companies.csv.gz",
  "sector_profile_companies.csv.gz",
  "sector_profile_upstream_companies.csv.gz"
)

released_paths <- toy_path(files)
deprecated_dir <- dir_create("inst", "extdata", "deprecated")
deprecated_paths <- path(deprecated_dir, files)

try(file_copy(released_paths, deprecated_paths, overwrite = FALSE))

data <- deprecated_paths |> map(\(x) read_csv(x, show_col_types = FALSE))
renamed <- data |> map(\(data) rename(data, companies_id = company_id))
renamed |> walk2(released_paths, \(x, y) write_csv(x, y))
