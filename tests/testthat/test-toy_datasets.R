test_that("emissions_profile_any_companies hasn't changed", {
  local_snapshot()
  data <- read_csv(toy_emissions_profile_any_companies())
  expect_snapshot(format_robust_snapshot(data))
})

test_that("emissions_profile_products_ecoinvent hasn't changed", {
  local_snapshot()
  data <- read_csv(toy_emissions_profile_products_ecoinvent())
  expect_snapshot(format_robust_snapshot(data))
})

test_that("*isic* don't have two consecutive single quotes", {
  local_snapshot()

  datasets <- lapply(toy_path(toy_files()), \(x) read_csv(x, n_max = 3))

  some_has_two_consecutive_double_quotes <- datasets |>
    map(\(x) select(x, matches("isic"))) |>
    map(\(x)map(x, \(x) any(grepl("''", x)))) |>
    unlist() |>
    any()

  expect_false(some_has_two_consecutive_double_quotes)
})

test_that("emissions_profile_upstream_products_ecoinvent hasn't changed", {
  local_snapshot()
  data <- read_csv(toy_emissions_profile_upstream_products_ecoinvent())
  expect_snapshot(format_robust_snapshot(data))
})

test_that("emissions_profile_products hasn't changed", {
  local_snapshot()
  data <- read_csv(toy_emissions_profile_products())
  expect_snapshot(format_robust_snapshot(data))
})

test_that("emissions_profile_upstream_products hasn't changed", {
  local_snapshot()
  data <- read_csv(toy_emissions_profile_upstream_products())
  expect_snapshot(format_robust_snapshot(data))
})
test_that("sector_profile_any_scenarios hasn't changed", {
  local_snapshot()
  data <- read_csv(toy_sector_profile_any_scenarios())
  expect_snapshot(format_robust_snapshot(data))
})

test_that("sector_profile_companies hasn't changed", {
  local_snapshot()
  data <- read_csv(toy_sector_profile_companies())
  expect_snapshot(format_robust_snapshot(data))
})

test_that("sector_profile_upstream_companies hasn't changed", {
  local_snapshot()
  data <- read_csv(toy_sector_profile_upstream_companies())
  expect_snapshot(format_robust_snapshot(data))
})

test_that("sector_profile_upstream_products hasn't changed", {
  local_snapshot()
  data <- read_csv(toy_sector_profile_upstream_products())
  expect_snapshot(format_robust_snapshot(data))
})
