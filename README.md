
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

path <- toy_dataset(files[[1]])
path
#> [1] "/usr/local/lib/R/site-library/tiltToyData/extdata/emissions_profile_any_companies.csv.gz"

read_csv(path, show_col_types = FALSE)
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
```
