test_that("emissions_profile_any_companies hasn't changed", {
  local_snapshot()
  data <- read_csv(toy_emissions_profile_any_companies())
  expect_snapshot(as.data.frame(data))
})

test_that("emissions_profile_products hasn't changed", {
  local_snapshot()
  data <- read_csv(toy_emissions_profile_products())
  expect_snapshot(as.data.frame(data))
})

test_that("emissions_profile_upstream_products hasn't changed", {
  local_snapshot()
  data <- read_csv(toy_emissions_profile_upstream_products())
  expect_snapshot(as.data.frame(data))
})
test_that("sector_profile_any_scenarios hasn't changed", {
  local_snapshot()
  data <- read_csv(toy_sector_profile_any_scenarios())
  expect_snapshot(as.data.frame(data))
})

test_that("sector_profile_companies hasn't changed", {
  local_snapshot()
  data <- read_csv(toy_sector_profile_companies())
  expect_snapshot(as.data.frame(data))
})

test_that("sector_profile_upstream_companies hasn't changed", {
  local_snapshot()
  data <- read_csv(toy_sector_profile_upstream_companies())
  expect_snapshot(as.data.frame(data))
})

test_that("sector_profile_upstream_products hasn't changed", {
  local_snapshot()
  data <- read_csv(toy_sector_profile_upstream_products())
  expect_snapshot(as.data.frame(data))
})
