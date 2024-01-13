# emissions_profile_products is deprecated

    Code
      data <- read_csv(toy_emissions_profile_products())
    Condition
      Warning:
      `toy_emissions_profile_products()` was deprecated in tiltToyData 0.0.0.9009.
      i Please use `toy_emissions_profile_products_ecoinvent()` instead.
    Code
      expect_s3_class(data, "data.frame")

# emissions_profile_upstream_products is deprecated

    Code
      data <- read_csv(toy_emissions_profile_upstream_products())
    Condition
      Warning:
      `toy_emissions_profile_upstream_products()` was deprecated in tiltToyData 0.0.0.9009.
      i Please use `toy_emissions_profile_upstream_products_ecoinvent()` instead.
    Code
      expect_s3_class(data, "data.frame")

