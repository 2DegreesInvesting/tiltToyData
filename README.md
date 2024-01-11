
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
library(readr)
options(readr.show_col_types = FALSE)

toy_files()
#> [1] "emissions_profile_any_companies.csv.gz"    
#> [2] "emissions_profile_products.csv.gz"         
#> [3] "emissions_profile_upstream_products.csv.gz"
#> [4] "sector_profile_any_scenarios.csv.gz"       
#> [5] "sector_profile_companies.csv.gz"           
#> [6] "sector_profile_upstream_companies.csv.gz"  
#> [7] "sector_profile_upstream_products.csv.gz"

read_csv(toy_emissions_profile_products())
#> # A tibble: 5 × 7
#>   co2_footprint tilt_sector    tilt_subsector unit  isic_4digit
#>           <dbl> <chr>          <chr>          <chr> <chr>      
#> 1        176.   Industry       Other          unit  '2560'     
#> 2         58.1  Industry       Other          unit  '2560'     
#> 3          4.95 Steel & Metals Steel          kg    '2870'     
#> 4         12.5  Agriculture    Agriculture    kg    '1780'     
#> 5          2.07 Industry       Other          kg    '2679'     
#> # ℹ 2 more variables: activity_uuid_product_uuid <chr>, ei_activity_name <chr>

toy_files() |>
  lapply(\(x) read_csv(toy_path(x))) |>
  setNames(toy_files())
#> $emissions_profile_any_companies.csv.gz
#> # A tibble: 9 × 4
#>   activity_uuid_product_uuid                        clustered companies_id unit 
#>   <chr>                                             <chr>     <chr>        <chr>
#> 1 0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4… stove     fleischerei… unit 
#> 2 be06d25c-73dc-55fb-965b-0f300453e380_98b48ff2-22… oven      fleischerei… unit 
#> 3 977d997e-c257-5033-ba39-d0edeeef4ba2_0ace02fa-ec… steel     pecheries-b… kg   
#> 4 ebb8475e-ff57-5e4e-937b-b5788186a5ca_ccee034c-8b… aged che… hoche-butte… kg   
#> 5 ebb8475e-ff57-5e4e-937b-b5788186a5ca_ccee034c-8b… aged che… vicquelin-e… kg   
#> 6 ebb8475e-ff57-5e4e-937b-b5788186a5ca_ccee034c-8b… cheese    bst-procont… kg   
#> 7 2f7b77a7-1556-5c1b-b0aa-c4534ddc8885_38d493e9-6f… cream     leider-gmbh… kg   
#> 8 2f7b77a7-1556-5c1b-b0aa-c4534ddc8885_38d493e9-6f… rubber    cheries-baq… kg   
#> 9 <NA>                                              apple     ca-coity-tr… <NA> 
#> 
#> $emissions_profile_products.csv.gz
#> # A tibble: 5 × 7
#>   co2_footprint tilt_sector    tilt_subsector unit  isic_4digit
#>           <dbl> <chr>          <chr>          <chr> <chr>      
#> 1        176.   Industry       Other          unit  '2560'     
#> 2         58.1  Industry       Other          unit  '2560'     
#> 3          4.95 Steel & Metals Steel          kg    '2870'     
#> 4         12.5  Agriculture    Agriculture    kg    '1780'     
#> 5          2.07 Industry       Other          kg    '2679'     
#> # ℹ 2 more variables: activity_uuid_product_uuid <chr>, ei_activity_name <chr>
#> 
#> $emissions_profile_upstream_products.csv.gz
#> # A tibble: 33 × 7
#>    input_co2_footprint input_tilt_sector input_tilt_subsector input_unit
#>                  <dbl> <chr>             <chr>                <chr>     
#>  1             7.07e+0 Inudstry          Other                kg        
#>  2             3.99e+1 Inudstry          Other                kwh       
#>  3             5.12e-1 Inudstry          Other                kg        
#>  4             1.24e+0 Inudstry          Other                kg        
#>  5             2.12e+1 Inudstry          Other                kwh       
#>  6             1.24e-9 Inudstry          Other                kg        
#>  7             7   e-9 Inudstry          Other                kg        
#>  8             1.04e+0 Inudstry          Other                kg        
#>  9             1.12e+0 Inudstry          Other                kg        
#> 10             3.51e+0 Inudstry          Other                kg        
#> # ℹ 23 more rows
#> # ℹ 3 more variables: input_isic_4digit <chr>,
#> #   input_activity_uuid_product_uuid <chr>, activity_uuid_product_uuid <chr>
#> 
#> $sector_profile_any_scenarios.csv.gz
#> # A tibble: 388 × 8
#>    scenario region sector    subsector              year  value reductions type 
#>    <chr>    <chr>  <chr>     <chr>                 <dbl>  <dbl>      <dbl> <chr>
#>  1 1.5c rps world  power     <NA>                   2030 5359.        0.58 ipr  
#>  2 1.5c rps world  power     <NA>                   2050 -807.        1.06 ipr  
#>  3 1.5c rps world  buildings <NA>                   2030 2454.        0.18 ipr  
#>  4 1.5c rps world  buildings <NA>                   2050   61.3       0.98 ipr  
#>  5 1.5c rps world  industry  iron and steel         2030 1872.        0.23 ipr  
#>  6 1.5c rps world  industry  iron and steel         2050   88.3       0.96 ipr  
#>  7 1.5c rps world  industry  non-metallic minerals  2030 2641.        0.13 ipr  
#>  8 1.5c rps world  industry  non-metallic minerals  2050  592.        0.8  ipr  
#>  9 1.5c rps world  industry  chemicals              2030 1218.        0.12 ipr  
#> 10 1.5c rps world  industry  chemicals              2050  102.        0.93 ipr  
#> # ℹ 378 more rows
#> 
#> $sector_profile_companies.csv.gz
#> # A tibble: 28 × 10
#>    companies_id        company_name clustered activity_uuid_produc…¹ isic_4digit
#>    <chr>               <chr>        <chr>     <chr>                  <chr>      
#>  1 fleischerei-stiefs… fleischerei… steel     0faa7ecb-fef2-5117-89… '2410'     
#>  2 fleischerei-stiefs… fleischerei… steel     0faa7ecb-fef2-5117-89… '2410'     
#>  3 pecheries-basques_… pecheries-b… nitrogen  03fbf989-9a1a-5e3d-a5… '2029'     
#>  4 pecheries-basques_… pecheries-b… nitrogen  03fbf989-9a1a-5e3d-a5… '2029'     
#>  5 hoche-butter-gmbh_… hoche-butte… waste     <NA>                   <NA>       
#>  6 hoche-butter-gmbh_… hoche-butte… waste     <NA>                   <NA>       
#>  7 hoche-butter-gmbh_… hoche-butte… car       <NA>                   <NA>       
#>  8 hoche-butter-gmbh_… hoche-butte… car       <NA>                   <NA>       
#>  9 hoche-butter-gmbh_… hoche-butte… heater    <NA>                   <NA>       
#> 10 hoche-butter-gmbh_… hoche-butte… heater    <NA>                   <NA>       
#> # ℹ 18 more rows
#> # ℹ abbreviated name: ¹​activity_uuid_product_uuid
#> # ℹ 5 more variables: tilt_sector <chr>, tilt_subsector <chr>, type <chr>,
#> #   sector <chr>, subsector <chr>
#> 
#> $sector_profile_upstream_companies.csv.gz
#> # A tibble: 8 × 6
#>   companies_id           clustered activity_uuid_produc…¹ ei_activity_name unit 
#>   <chr>                  <chr>     <chr>                  <chr>            <chr>
#> 1 fleischerei-stiefsohn… stove     0a242b09-772a-5edf-8e… cookstove produ… unit 
#> 2 fleischerei-stiefsohn… oven      be06d25c-73dc-55fb-96… microwave oven … unit 
#> 3 pecheries-basques_fra… steel     977d997e-c257-5033-ba… market for stee… kg   
#> 4 hoche-butter-gmbh_deu… aged che… ebb8475e-ff57-5e4e-93… cheese producti… kg   
#> 5 vicquelin-espaces-ver… aged che… ebb8475e-ff57-5e4e-93… cheese producti… kg   
#> 6 bst-procontrol-gmbh_0… cheese    ebb8475e-ff57-5e4e-93… market for chee… kg   
#> 7 leider-gmbh_000000050… cream     2f7b77a7-1556-5c1b-b0… market for seal… kg   
#> 8 cheries-baqu_neu31654… rubber    2f7b77a7-1556-5c1b-b0… seal production… kg   
#> # ℹ abbreviated name: ¹​activity_uuid_product_uuid
#> # ℹ 1 more variable: tilt_sector <chr>
#> 
#> $sector_profile_upstream_products.csv.gz
#> # A tibble: 74 × 10
#>    activity_uuid_product_uuid      input_activity_uuid_…¹ input_reference_prod…²
#>    <chr>                           <chr>                  <chr>                 
#>  1 0a242b09-772a-5edf-8e82-9cb4ba… 5de8c337-dea9-5c1f-9d… biowaste              
#>  2 0a242b09-772a-5edf-8e82-9cb4ba… 5de8c337-dea9-5c1f-9d… biowaste              
#>  3 0a242b09-772a-5edf-8e82-9cb4ba… 1aeb18b9-8355-560f-82… chemical, inorganic   
#>  4 0a242b09-772a-5edf-8e82-9cb4ba… 1aeb18b9-8355-560f-82… chemical, inorganic   
#>  5 0a242b09-772a-5edf-8e82-9cb4ba… 22704506-7707-5ae7-99… chemical, organic     
#>  6 0a242b09-772a-5edf-8e82-9cb4ba… 22704506-7707-5ae7-99… chemical, organic     
#>  7 0a242b09-772a-5edf-8e82-9cb4ba… 92078219-1ed3-5215-9f… cow milk              
#>  8 0a242b09-772a-5edf-8e82-9cb4ba… 92078219-1ed3-5215-9f… cow milk              
#>  9 0a242b09-772a-5edf-8e82-9cb4ba… 9d483329-b09a-5513-b1… cream, from cow milk  
#> 10 0a242b09-772a-5edf-8e82-9cb4ba… 9d483329-b09a-5513-b1… cream, from cow milk  
#> # ℹ 64 more rows
#> # ℹ abbreviated names: ¹​input_activity_uuid_product_uuid,
#> #   ²​input_reference_product_name
#> # ℹ 7 more variables: input_unit <chr>, input_isic_4digit <chr>,
#> #   input_tilt_sector <chr>, input_tilt_subsector <chr>, type <chr>,
#> #   sector <chr>, subsector <chr>
```
