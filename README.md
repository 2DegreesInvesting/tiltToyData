
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
#> [3] "emissions_profile_products_ecoinvent.csv.gz"         
#> [4] "emissions_profile_upstream_products.csv.gz"          
#> [5] "emissions_profile_upstream_products_ecoinvent.csv.gz"
#> [6] "sector_profile_any_scenarios.csv.gz"                 
#> [7] "sector_profile_companies.csv.gz"                     
#> [8] "sector_profile_upstream_companies.csv.gz"            
#> [9] "sector_profile_upstream_products.csv.gz"

read_csv(toy_emissions_profile_products())
#> # A tibble: 5 × 7
#>   co2_footprint tilt_sector    tilt_subsector unit  isic_4digit
#>           <dbl> <chr>          <chr>          <chr>       <dbl>
#> 1        176.   Industry       Other          unit         2560
#> 2         58.1  Industry       Other          unit         2560
#> 3          4.95 Steel & Metals Steel          kg           2870
#> 4         12.5  Agriculture    Agriculture    kg           1780
#> 5          2.07 Industry       Other          kg           2679
#> # ℹ 2 more variables: activity_uuid_product_uuid <chr>, ei_activity_name <chr>

toy_files() |>
  lapply(\(x) read_csv(toy_path(x))) |>
  setNames(toy_files())
#> $emissions_profile_any_companies.csv.gz
#> # A tibble: 76 × 7
#>    activity_uuid_product_uuid    clustered companies_id country ei_activity_name
#>    <chr>                         <chr>     <chr>        <chr>   <chr>           
#>  1 ae4b2ccd-fc85-507a-a674-4190… tent      4938846-001  germany market for shed…
#>  2 ae4b2ccd-fc85-507a-a674-4190… table hi… 8-696604001  spain   market for shed…
#>  3 109e6c01-6942-56c9-b74a-f214… surface … 5308453-001  germany market for deep…
#>  4 109e6c01-6942-56c9-b74a-f214… surface … 5308453-001  germany market for deep…
#>  5 ae4b2ccd-fc85-507a-a674-4190… tent      5185864-001  austria market for shed…
#>  6 ae4b2ccd-fc85-507a-a674-4190… tent      5047636-001  germany market for shed…
#>  7 ae4b2ccd-fc85-507a-a674-4190… open spa… 25281-00101  france  market for shed…
#>  8 ae4b2ccd-fc85-507a-a674-4190… tent      5102698-001  germany market for shed…
#>  9 ae4b2ccd-fc85-507a-a674-4190… tent      4863428-001  germany market for shed…
#> 10 ae4b2ccd-fc85-507a-a674-4190… tent      5111913-001  germany market for shed…
#> # ℹ 66 more rows
#> # ℹ 2 more variables: main_activity <chr>, unit <chr>
#> 
#> $emissions_profile_products.csv.gz
#> # A tibble: 5 × 7
#>   co2_footprint tilt_sector    tilt_subsector unit  isic_4digit
#>           <dbl> <chr>          <chr>          <chr>       <dbl>
#> 1        176.   Industry       Other          unit         2560
#> 2         58.1  Industry       Other          unit         2560
#> 3          4.95 Steel & Metals Steel          kg           2870
#> 4         12.5  Agriculture    Agriculture    kg           1780
#> 5          2.07 Industry       Other          kg           2679
#> # ℹ 2 more variables: activity_uuid_product_uuid <chr>, ei_activity_name <chr>
#> 
#> $emissions_profile_products_ecoinvent.csv.gz
#> # A tibble: 18 × 10
#>    activity_uuid_product_uuid        co2_footprint ei_activity_name ei_geography
#>    <chr>                                     <dbl> <chr>            <chr>       
#>  1 d9704463-45e6-5aa5-9982-6cc6a982…             0 iron-nickel-chr… RER         
#>  2 109e6c01-6942-56c9-b74a-f2145b22…             0 market for deep… GLO         
#>  3 ae4b2ccd-fc85-507a-a674-4190bb82…             0 market for shed… GLO         
#>  4 d9704463-45e6-5aa5-9982-6cc6a982…             0 iron-nickel-chr… RER         
#>  5 109e6c01-6942-56c9-b74a-f2145b22…             0 market for deep… GLO         
#>  6 ae4b2ccd-fc85-507a-a674-4190bb82…             0 market for shed… GLO         
#>  7 d9704463-45e6-5aa5-9982-6cc6a982…             0 iron-nickel-chr… RER         
#>  8 109e6c01-6942-56c9-b74a-f2145b22…             0 market for deep… GLO         
#>  9 ae4b2ccd-fc85-507a-a674-4190bb82…             0 market for shed… GLO         
#> 10 d9704463-45e6-5aa5-9982-6cc6a982…             0 iron-nickel-chr… RER         
#> 11 109e6c01-6942-56c9-b74a-f2145b22…             0 market for deep… GLO         
#> 12 ae4b2ccd-fc85-507a-a674-4190bb82…             0 market for shed… GLO         
#> 13 d9704463-45e6-5aa5-9982-6cc6a982…             0 iron-nickel-chr… RER         
#> 14 109e6c01-6942-56c9-b74a-f2145b22…             0 market for deep… GLO         
#> 15 ae4b2ccd-fc85-507a-a674-4190bb82…             0 market for shed… GLO         
#> 16 d9704463-45e6-5aa5-9982-6cc6a982…             0 iron-nickel-chr… RER         
#> 17 109e6c01-6942-56c9-b74a-f2145b22…             0 market for deep… GLO         
#> 18 ae4b2ccd-fc85-507a-a674-4190bb82…             0 market for shed… GLO         
#> # ℹ 6 more variables: isic_4digit <dbl>, tilt_sector <chr>,
#> #   tilt_subsector <chr>, unit <chr>, grouped_by <chr>, profile_ranking <dbl>
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
#> # ℹ 3 more variables: input_isic_4digit <dbl>,
#> #   input_activity_uuid_product_uuid <chr>, activity_uuid_product_uuid <chr>
#> 
#> $emissions_profile_upstream_products_ecoinvent.csv.gz
#> # A tibble: 96 × 11
#>    activity_uuid_product_uuid                ei_geography input_activity_uuid_…¹
#>    <chr>                                     <chr>        <chr>                 
#>  1 d9704463-45e6-5aa5-9982-6cc6a982241a_55c… RER          bdc93cd8-00b4-5b3e-99…
#>  2 d9704463-45e6-5aa5-9982-6cc6a982241a_55c… RER          fdb1f848-173f-5fe1-96…
#>  3 d9704463-45e6-5aa5-9982-6cc6a982241a_55c… RER          95fcd1bb-4dc6-516a-a3…
#>  4 d9704463-45e6-5aa5-9982-6cc6a982241a_55c… RER          daef2f9a-4108-52ae-90…
#>  5 d9704463-45e6-5aa5-9982-6cc6a982241a_55c… RER          3b190359-a32e-5294-af…
#>  6 d9704463-45e6-5aa5-9982-6cc6a982241a_55c… RER          2c92cdcd-29df-53ba-a2…
#>  7 d9704463-45e6-5aa5-9982-6cc6a982241a_55c… RER          9392c694-12a6-5cd7-a4…
#>  8 d9704463-45e6-5aa5-9982-6cc6a982241a_55c… RER          c18c6cc9-4a26-5c47-9e…
#>  9 d9704463-45e6-5aa5-9982-6cc6a982241a_55c… RER          c4ec0b1e-2a3b-5700-87…
#> 10 d9704463-45e6-5aa5-9982-6cc6a982241a_55c… RER          7361f7fb-5cf2-598c-82…
#> # ℹ 86 more rows
#> # ℹ abbreviated name: ¹​input_activity_uuid_product_uuid
#> # ℹ 8 more variables: input_co2_footprint <dbl>, input_isic_4digit <dbl>,
#> #   input_reference_product_name <chr>, input_tilt_sector <chr>,
#> #   input_tilt_subsector <chr>, input_unit <chr>, grouped_by <chr>,
#> #   profile_ranking <dbl>
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
#>    <chr>               <chr>        <chr>     <chr>                        <dbl>
#>  1 fleischerei-stiefs… fleischerei… steel     0faa7ecb-fef2-5117-89…        2410
#>  2 fleischerei-stiefs… fleischerei… steel     0faa7ecb-fef2-5117-89…        2410
#>  3 pecheries-basques_… pecheries-b… nitrogen  03fbf989-9a1a-5e3d-a5…        2029
#>  4 pecheries-basques_… pecheries-b… nitrogen  03fbf989-9a1a-5e3d-a5…        2029
#>  5 hoche-butter-gmbh_… hoche-butte… waste     <NA>                            NA
#>  6 hoche-butter-gmbh_… hoche-butte… waste     <NA>                            NA
#>  7 hoche-butter-gmbh_… hoche-butte… car       <NA>                            NA
#>  8 hoche-butter-gmbh_… hoche-butte… car       <NA>                            NA
#>  9 hoche-butter-gmbh_… hoche-butte… heater    <NA>                            NA
#> 10 hoche-butter-gmbh_… hoche-butte… heater    <NA>                            NA
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
#> # ℹ 7 more variables: input_unit <chr>, input_isic_4digit <dbl>,
#> #   input_tilt_sector <chr>, input_tilt_subsector <chr>, type <chr>,
#> #   sector <chr>, subsector <chr>
```
