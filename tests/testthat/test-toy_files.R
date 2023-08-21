test_that("outputs one known file", {
  expect_true("sector_profile_companies.csv.gz" %in% toy_files())
})

test_that("is sensitive to `pattern`", {
  expect_true(all(grepl("sector", toy_files(pattern = "sector"))))
  expect_false(any(grepl("emissions", toy_files(pattern = "sector"))))
})
