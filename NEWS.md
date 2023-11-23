<!-- NEWS.md is maintained by https://cynkra.github.io/fledge, do not edit -->

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
