library(dplyr, warn.conflicts = FALSE)
library(readr, warn.conflicts = FALSE)
library(here)
library(fs)

withr::local_options(readr.show_col_types = FALSE)

# https://github.com/2DegreesInvesting/tiltToyData/issues/49

data_raw <- function(...) here("data-raw", ...)
csv_gz <- function(path) paste0(path, ".csv.gz")

path <- toy_path(csv_gz(dataset))
new_path <- data_raw(csv_gz(paste0(dataset, "-v0.0.0.9203")))

# Copy `europages_companies` v0.0.0.9203 to data-raw/ -----------------------
dataset <- "europages_companies"
file_copy(path, new_path)

europages_companies_old <- data_raw(csv_gz(dataset)) |> read_csv()

# Ensure the old dataset lacks the columns I'm about to add
lacks_name <- function(x, name) !hasName(x, name)
europages_companies_old |> lacks_name("min_headcount") |> stopifnot()
europages_companies_old |> lacks_name("max_headcount") |> stopifnot()

europages_companies <- europages_companies_old |>
  mutate(min_headcount = 1, max_headcount = 10)

# Ensure the new dataset has the columns I just added
europages_companies |> hasName("min_headcount") |> stopifnot()
europages_companies |> hasName("max_headcount") |> stopifnot()

# Overwrite
toy_path(csv_gz(dataset))
