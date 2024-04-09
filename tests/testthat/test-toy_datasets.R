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

  is_single_quoted_twice <- datasets |>
    map(\(x) select(x, matches("isic"))) |>
    map(\(x)map(x, \(x) any(grepl("''", x)))) |>
    unlist() |>
    any()

  expect_false(is_single_quoted_twice)
})

test_that("emissions_profile_upstream_products_ecoinvent hasn't changed", {
  local_snapshot()
  data <- read_csv(toy_emissions_profile_upstream_products_ecoinvent())
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

test_that("europages_companies hasn't changed", {
  local_snapshot()
  data <- read_csv(toy_europages_companies()) |> head()
  expect_snapshot(format_robust_snapshot(data))
})

test_that("europages_companies has headcount", {
  local_options(readr.show_col_types = FALSE)

  data <- read_csv(toy_europages_companies()) |> head()
  expect_true(hasName(data, "min_headcount"))
  expect_true(hasName(data, "max_headcount"))
})

test_that("ecoinvent_activities hasn't changed", {
  local_snapshot()
  data <- read_csv(toy_ecoinvent_activities() |> head())
  expect_snapshot(format_robust_snapshot(data))
})

test_that("ecoinvent_inputs hasn't changed", {
  local_snapshot()
  data <- read_csv(toy_ecoinvent_inputs()) |> head()
  expect_snapshot(format_robust_snapshot(data))
})

test_that("ecoinvent_europages hasn't changed", {
  local_snapshot()
  data <- read_csv(toy_ecoinvent_europages()) |> head()
  expect_snapshot(format_robust_snapshot(data))
})

test_that("isic_name hasn't changed", {
  local_snapshot()
  data <- read_csv(toy_isic_name()) |> head()
  expect_snapshot(format_robust_snapshot(data))
})

test_that("in emissions, some `*uuid` in `companies` also exist in `co2`", {
  local_options(readr.show_col_types = FALSE)

  companies <- read_csv(toy_emissions_profile_any_companies())
  products <- read_csv(toy_emissions_profile_products_ecoinvent())
  inputs <- read_csv(toy_emissions_profile_upstream_products_ecoinvent())

  expect_true(nrow(suppressMessages(semi_join(companies, products))) > 0L)
  expect_true(nrow(suppressMessages(semi_join(companies, inputs))) > 0L)
})

test_that("in emissions, all `*uuid` in `companies` also exist in `co2`", {
  local_options(readr.show_col_types = FALSE)

  companies <- read_csv(toy_emissions_profile_any_companies())
  products <- read_csv(toy_emissions_profile_products_ecoinvent())
  inputs <- read_csv(toy_emissions_profile_upstream_products_ecoinvent())

  expect_true(identical(nrow(suppressMessages(anti_join(companies, products))), 0L))
  expect_true(identical(nrow(suppressMessages(anti_join(companies, inputs))), 0L))
})

test_that("in emissions, all `*uuid` in `co2` also exist in `companies`", {
  local_options(readr.show_col_types = FALSE)

  companies <- read_csv(toy_emissions_profile_any_companies())
  products <- read_csv(toy_emissions_profile_products_ecoinvent())
  inputs <- read_csv(toy_emissions_profile_upstream_products_ecoinvent())

  expect_true(identical(nrow(suppressMessages(anti_join(products, companies))), 0L))
  expect_true(identical(nrow(suppressMessages(anti_join(inputs, companies))), 0L))
})
