
<!-- README.md is generated from README.Rmd. Please edit that file -->

# tiltToyData

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
<!-- badges: end -->

The goal of tiltToyData is to provide toy datasets for TILT.

## Installation

You can install the development version of tiltToyData like so:

``` r
# install.packages("devtools")
devtools::install_github("2DegreesInvesting/tiltToyData")
```

## Example

``` r
library(tiltToyData)
library(readr)

files <- toy_datasets()
files
#> [1] "emissions_profile_any_companies.csv.gz"    
#> [2] "emissions_profile_products.csv.gz"         
#> [3] "emissions_profile_upstream_products.csv.gz"

toy_dataset(files[[1]])
#> [1] "/usr/local/lib/R/site-library/tiltToyData/extdata/emissions_profile_any_companies.csv.gz"

datasets <- lapply(files, \(x) read_csv(toy_dataset(x), show_col_types = FALSE))
setNames(datasets, files)
#> $emissions_profile_any_companies.csv.gz
#> # A tibble: 9 × 4
#>   activity_uuid_product_uuid                          clustered company_id unit 
#>   <chr>                                               <chr>     <chr>      <chr>
#> 1 0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0… stove     fleischer… unit 
#> 2 be06d25c-73dc-55fb-965b-0f300453e380_98b48ff2-2200… oven      fleischer… unit 
#> 3 977d997e-c257-5033-ba39-d0edeeef4ba2_0ace02fa-eca5… steel     pecheries… kg   
#> 4 ebb8475e-ff57-5e4e-937b-b5788186a5ca_ccee034c-8b6c… aged che… hoche-but… kg   
#> 5 ebb8475e-ff57-5e4e-937b-b5788186a5ca_ccee034c-8b6c… aged che… vicquelin… kg   
#> 6 ebb8475e-ff57-5e4e-937b-b5788186a5ca_ccee034c-8b6c… cheese    bst-proco… kg   
#> 7 2f7b77a7-1556-5c1b-b0aa-c4534ddc8885_38d493e9-6feb… cream     leider-gm… kg   
#> 8 2f7b77a7-1556-5c1b-b0aa-c4534ddc8885_38d493e9-6feb… rubber    cheries-b… kg   
#> 9 <NA>                                                apple     ca-coity-… <NA> 
#> 
#> $emissions_profile_products.csv.gz
#> # A tibble: 5 × 6
#>   co2_footprint tilt_sector    unit  isic_4digit activity_uuid_product_uuid     
#>           <dbl> <chr>          <chr>       <dbl> <chr>                          
#> 1        176.   Industry       unit         2560 0a242b09-772a-5edf-8e82-9cb4ba…
#> 2         58.1  Industry       unit         2560 be06d25c-73dc-55fb-965b-0f3004…
#> 3          4.95 Steel & Metals kg           2870 977d997e-c257-5033-ba39-d0edee…
#> 4         12.5  Agriculture    kg           1780 ebb8475e-ff57-5e4e-937b-b57881…
#> 5          2.07 Industry       kg           2679 2f7b77a7-1556-5c1b-b0aa-c4534d…
#> # ℹ 1 more variable: ei_activity_name <chr>
#> 
#> $emissions_profile_upstream_products.csv.gz
#> # A tibble: 33 × 6
#>    input_co2_footprint input_tilt_sector input_unit input_isic_4digit
#>                  <dbl> <chr>             <chr>                  <dbl>
#>  1             7.07e+0 Inudstry          kg                      2560
#>  2             3.99e+1 Inudstry          kwh                     2560
#>  3             5.12e-1 Inudstry          kg                      2560
#>  4             1.24e+0 Inudstry          kg                      2560
#>  5             2.12e+1 Inudstry          kwh                     2560
#>  6             1.24e-9 Inudstry          kg                      2560
#>  7             7   e-9 Inudstry          kg                      2560
#>  8             1.04e+0 Inudstry          kg                      2560
#>  9             1.12e+0 Inudstry          kg                      2560
#> 10             3.51e+0 Inudstry          kg                      2560
#> # ℹ 23 more rows
#> # ℹ 2 more variables: input_activity_uuid_product_uuid <chr>,
#> #   activity_uuid_product_uuid <chr>
```
