<!-- NEWS.md is maintained by https://cynkra.github.io/fledge, do not edit -->

# tiltToyData 0.0.0.9008 (2024-01-12)

* Update `toy_emissions_profile*` datasets. Now each `activity_uuid_product_uuid`
in `toy_emissions_profile_any_companies()` also exists in
`toy_emissions_profile_products_ecoinvent()` and
`toy_emissions_profile_upstream_products_ecoinvent()` (#25).

# tiltToyData 0.0.0.9007 (2024-01-11)

* New version of `toy_emissions_profile_any_companies()`.

* New datasets `toy_emissions_profile_products_ecoinvent()` and
`toy_emissions_profile_upstream_products_ecoinvent()` *pretend* to have all the
products that exist in the 'Ecoinvent' database. Because they are toy datasets
they actually have only a few products that exist in 'Ecoinvent' and not in
'Europages'.

Features:

* Fake `companies_id`.
* Fake `activity_uuid_product_uuid`.
* Random mapping between fake `activity_uuid_product_uuid` and other columns.
* Noisy `*co2_footprint`, jittered to the right by 50%-100% on average.
* New columns:
    * Compared to the previous version of `toy_emissions_profile_any_companies()`,
    the new version gains three columns: `country`, `ei_activity_name`, and
    `main_activity.
    * Compared to `toy_emissions_profile_products()`, the new dataset
    `toy_emissions_profile_products_ecoinvent()` gains one column:
    `ei_geography`.
    * Compared to `toy_emissions_profile_upstrem_products()`, the new dataset
    `toy_emissions_profile_upstream_products_ecoinvent()` gains four columns:
    `ei_activity_name`, `ei_geography`, `input_ei_activity_name`,
    `input_reference_product_name`.

# tiltToyData 0.0.0.9005 (2023-12-07)

* Add single quotes around values of `*isic*`  (#17).

# tiltToyData 0.0.0.9004 (2023-11-23)

* Retire `companies$company_id` (#11).

# tiltToyData 0.0.0.9003 (2023-11-17)

* Rename `company_id` to `companies_id` in a backward compatible way (#10). The
column `company_id` is now deprecated in all `toy_*companies()`. The latest data
uses `companies_id` and is available to you automatically when you update the
tiltIndicator package.

# tiltToyData 0.0.0.9002 (2023-08-29)

* The files "emissions_profile_products.csv.gz" and "emissions_profile_upstream_products.csv.gz" gain the columns `tilt_subsector` and `input_tilt_subsector`, respectively. These columns come from raw data in tiltIndicator v0.0.0.9088 (i.e. right before all toy datasets moved to tiltToyData (@kalashsinghal #6).

# tiltToyData 0.0.0.9001 (2023-08-21)

* New helpers to read toy datasets (#1).
