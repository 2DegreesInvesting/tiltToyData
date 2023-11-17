test_that("`*emissions*companies` with old tiltIndicator yields deprecated data", {
  local_cutoff(c(extreemely_high = "999"))
  expect_true(grepl("deprecated", toy_emissions_profile_any_companies()))
})

test_that("`*emissions*companies` with new tiltIndicator yields released data", {
  local_cutoff(c(extreemely_low = "0"))
  expect_false(grepl("deprecated", toy_emissions_profile_any_companies()))
})
