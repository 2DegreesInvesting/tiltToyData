# Source: tiltIndicatorAfter v0.0.0.9016
tiltIndicatorAfter::ep_companies |>
  readr::write_csv("inst/extdata/europages_companies.csv.gz")

tiltIndicatorAfter::ecoinvent_activities |>
  readr::write_csv("inst/extdata/ecoinvent_activities.csv.gz")

tiltIndicatorAfter::ecoinvent_inputs |>
  readr::write_csv("inst/extdata/ecoinvent_inputs.csv.gz")

tiltIndicatorAfter::matches_mapper |>
  head(100) |>
  readr::write_csv("inst/extdata/ecoinvent_europages.csv.gz")

tiltIndicatorAfter::isic_name |>
  readr::write_csv("inst/extdata/isic_name.csv.gz")
