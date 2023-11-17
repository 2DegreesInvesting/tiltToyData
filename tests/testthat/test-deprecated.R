test_that("`*emissions*companies` with old tiltIndicator yields deprecated data", {
  extreemely_high <- "999"
  local_cutoff(extreemely_high)
  expect_true(grepl("deprecated", toy_emissions_profile_any_companies()))
})

test_that("`*emissions*companies` with new tiltIndicator yields released data", {
  extreemely_low <- "0"
  local_cutoff(extreemely_low)
  expect_false(grepl("deprecated", toy_emissions_profile_any_companies()))
})
