# https://github.com/2DegreesInvesting/tiltToyData/issues/49
# This is mostly a one-time file. It's useful in the PR that introduces the
# `*headcount` columns so we know how they were created. But it's not useful
# later, so it's okay to later remove it. Git will remember it.
if (packageVersion("tiltToyData") > "0.0.0.9203") {
  rlang::warn(
    c(
      "tiltToyData > 0.0.0.9203 should already have the `*headcount` columns.",
      x = "If `europages_companies` has `*headcount` you'll see an error.",
      i = "Do you need to rewrite this file?"
    )
  )
}

library(dplyr, warn.conflicts = FALSE)
library(readr, warn.conflicts = FALSE)
library(here)
library(fs)

withr::local_options(readr.show_col_types = FALSE)

data_raw <- function(...) here("data-raw", ...)
csv_gz <- function(path) paste0(path, ".csv.gz")

inst_path <- toy_path(csv_gz(dataset))
new_path <- data_raw(csv_gz(paste0(dataset, "-v0.0.0.9203")))

# Copy `europages_companies` v0.0.0.9203 to data-raw/ -----------------------
dataset <- "europages_companies"
file_copy(inst_path, new_path)

europages_companies_old <- read_csv(new_path)

# Ensure the old dataset lacks the columns I'm about to add
lacks_name <- function(x, name) !hasName(x, name)
stopifnot(lacks_name(europages_companies_old, "min_headcount"))
stopifnot(lacks_name(europages_companies_old, "max_headcount"))

europages_companies <- europages_companies_old |>
  mutate(min_headcount = 1, max_headcount = 10)

# Ensure the new dataset has the columns I just added
stopifnot(hasName(europages_companies, "min_headcount"))
stopifnot(hasName(europages_companies, "max_headcount"))

# Update
write_csv(europages_companies, inst_path)
