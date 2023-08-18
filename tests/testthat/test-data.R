test_that("emissions_profile_any_companies hasn't changed", {
  local_options(snapshot_witdh())
  companies <- read_toy_dataset("emissions_profile_any_companies")
  expect_snapshot(companies)
})

test_that("emissions_profile_products hasn't changed", {
  local_options(snapshot_witdh())
  products <- read_toy_dataset("emissions_profile_products")
  expect_snapshot(products)
})

test_that("emissions_profile_products has no duplicates in `activity_uuid_product_uuid` (#390)", {
  products <- read_toy_dataset("emissions_profile_products")
  expect_false(any(duplicated(products$activity_uuid_product_uuid)))
})

test_that("emissions_profile_upstream_products hasn't changed", {
  local_options(snapshot_witdh())
  upstream_products <- read_toy_dataset("emissions_profile_upstream_products")
  expect_snapshot(upstream_products)
})

# test_that("`xstr_scenarios` hasn't changed", {
#   expect_snapshot(xstr_scenarios)
# })
#
# test_that("`istr_inputs` hasn't changed", {
#   expect_snapshot(istr_inputs)
# })
#
# test_that("`istr_companies` hasn't changed", {
#   expect_snapshot(istr_companies)
# })
#
# test_that("`pstr_companies` hasn't changed", {
#   expect_snapshot(pstr_companies)
# })
