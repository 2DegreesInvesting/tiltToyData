
<!-- README.md is generated from README.Rmd. Please edit that file -->

# tiltToyData

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![Codecov test
coverage](https://codecov.io/gh/2DegreesInvesting/tiltToyData/branch/main/graph/badge.svg)](https://app.codecov.io/gh/2DegreesInvesting/tiltToyData?branch=main)
[![R-CMD-check](https://github.com/2DegreesInvesting/tiltToyData/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/2DegreesInvesting/tiltToyData/actions/workflows/R-CMD-check.yaml)
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
#> Loading required package: tiltAdapters

toy_files()
#> [1] "emissions_profile_any_companies.csv.gz"    
#> [2] "emissions_profile_products.csv.gz"         
#> [3] "emissions_profile_upstream_products.csv.gz"
#> [4] "sector_profile_any_scenarios.csv.gz"       
#> [5] "sector_profile_companies.csv.gz"           
#> [6] "sector_profile_upstream_companies.csv.gz"  
#> [7] "sector_profile_upstream_products.csv.gz"

toy_path(toy_files())
#> [1] "/usr/local/lib/R/site-library/tiltToyData/extdata/emissions_profile_any_companies.csv.gz"    
#> [2] "/usr/local/lib/R/site-library/tiltToyData/extdata/emissions_profile_products.csv.gz"         
#> [3] "/usr/local/lib/R/site-library/tiltToyData/extdata/emissions_profile_upstream_products.csv.gz"
#> [4] "/usr/local/lib/R/site-library/tiltToyData/extdata/sector_profile_any_scenarios.csv.gz"       
#> [5] "/usr/local/lib/R/site-library/tiltToyData/extdata/sector_profile_companies.csv.gz"           
#> [6] "/usr/local/lib/R/site-library/tiltToyData/extdata/sector_profile_upstream_companies.csv.gz"  
#> [7] "/usr/local/lib/R/site-library/tiltToyData/extdata/sector_profile_upstream_products.csv.gz"

read.csv(toy_path(toy_files()[[1]]))
#>                                                  activity_uuid_product_uuid
#> 1 0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0-4cce-93b4-0745344da5fa
#> 2 be06d25c-73dc-55fb-965b-0f300453e380_98b48ff2-2200-4b08-9dec-9c7c0e3585bc
#> 3 977d997e-c257-5033-ba39-d0edeeef4ba2_0ace02fa-eca5-482d-a829-c18e46a52db4
#> 4 ebb8475e-ff57-5e4e-937b-b5788186a5ca_ccee034c-8b6c-40d6-ac36-4c70c4623efa
#> 5 ebb8475e-ff57-5e4e-937b-b5788186a5ca_ccee034c-8b6c-40d6-ac36-4c70c4623efa
#> 6 ebb8475e-ff57-5e4e-937b-b5788186a5ca_ccee034c-8b6c-40d6-ac36-4c70c4623efa
#> 7 2f7b77a7-1556-5c1b-b0aa-c4534ddc8885_38d493e9-6feb-4c66-86eb-2253ef8ee54d
#> 8 2f7b77a7-1556-5c1b-b0aa-c4534ddc8885_38d493e9-6feb-4c66-86eb-2253ef8ee54d
#> 9                                                                      <NA>
#>     clustered                               company_id unit
#> 1       stove fleischerei-stiefsohn_00000005219477-001 unit
#> 2        oven fleischerei-stiefsohn_00000005219477-001 unit
#> 3       steel        pecheries-basques_fra316541-00101   kg
#> 4 aged cheese    hoche-butter-gmbh_deu422723-693847001   kg
#> 5 aged cheese  vicquelin-espaces-verts_fra697272-00101   kg
#> 6      cheese   bst-procontrol-gmbh_00000005104947-001   kg
#> 7       cream           leider-gmbh_00000005064318-001   kg
#> 8      rubber             cheries-baqu_neu316541-00101   kg
#> 9       apple       ca-coity-trg-aua-gmbh_00000384-001 <NA>
```
