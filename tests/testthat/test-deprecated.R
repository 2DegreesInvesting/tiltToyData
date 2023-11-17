test_that("`*emissions*companies` with old tiltIndicator yields deprecated data", {
  local_cutoff(c(extreemely_high = "999"))

  expect_warning(
    path <- toy_emissions_profile_any_companies(),
    class = "deprecated_company_id"
  )
  expect_true(grepl("deprecated", path))
})

test_that("`*emissions*companies` with new tiltIndicator yields released data", {
  local_cutoff(c(extreemely_low = "0"))

  path <- toy_emissions_profile_any_companies()
  expect_false(grepl("deprecated", path))
})

test_that("`*sector*companies` with old tiltIndicator yields deprecated data", {
  local_cutoff(c(extreemely_high = "999"))

  expect_warning(
    path <- toy_sector_profile_companies(),
    class = "deprecated_company_id"
  )
  expect_true(grepl("deprecated", path))
})

test_that("`*sector*companies` with new tiltIndicator yields released data", {
  local_cutoff(c(extreemely_low = "0"))

  path <- toy_sector_profile_companies()
  expect_false(grepl("deprecated", path))
})

test_that("`*sector*companies` with old tiltIndicator yields deprecated data", {
  local_cutoff(c(extreemely_high = "999"))

  expect_warning(
    path <- toy_sector_profile_upstream_companies(),
    class = "deprecated_company_id"
  )
  expect_true(grepl("deprecated", path))
})

test_that("`*sector*companies` with new tiltIndicator yields released data", {
  local_cutoff(c(extreemely_low = "0"))

  path <- toy_sector_profile_upstream_companies()
  expect_false(grepl("deprecated", path))
})
