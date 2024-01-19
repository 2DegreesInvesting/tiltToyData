
<!-- README.md is generated from README.Rmd. Please edit that file -->

# tiltToyData

<!-- badges: start -->

[![tiltToyData status
badge](https://2degreesinvesting.r-universe.dev/badges/tiltToyData)](https://2degreesinvesting.r-universe.dev/tiltToyData)
[![R-CMD-check](https://github.com/2DegreesInvesting/tiltToyData/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/2DegreesInvesting/tiltToyData/actions/workflows/R-CMD-check.yaml)
[![Codecov test
coverage](https://codecov.io/gh/2DegreesInvesting/tiltToyData/branch/main/graph/badge.svg)](https://app.codecov.io/gh/2DegreesInvesting/tiltToyData?branch=main)
[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
<!-- badges: end -->

The goal of tiltToyData is to provide toy datasets for TILT.

## Installation

You can install the latest release from
[r-universe](https://r-universe.dev/) with:

``` r
# install.packages("pak")
pak::repo_add(r_universe = "https://2degreesinvesting.r-universe.dev")
install.packages("tiltToyData")
```

Or the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("2DegreesInvesting/tiltToyData")
```

Having trouble? Try it on a fresh new project on <https://posit.cloud/>
(free).

## Example

``` r
library(tiltToyData)
library(readr)
options(readr.show_col_types = FALSE)

toy_files()
#>  [1] "ecoinvent_activities.csv.gz"                         
#>  [2] "ecoinvent_europages.csv.gz"                          
#>  [3] "ecoinvent_inputs.csv.gz"                             
#>  [4] "emissions_profile_any_companies.csv.gz"              
#>  [5] "emissions_profile_products_ecoinvent.csv.gz"         
#>  [6] "emissions_profile_upstream_products_ecoinvent.csv.gz"
#>  [7] "europages_companies.csv.gz"                          
#>  [8] "isic_name.csv.gz"                                    
#>  [9] "sector_profile_any_scenarios.csv.gz"                 
#> [10] "sector_profile_companies.csv.gz"                     
#> [11] "sector_profile_upstream_companies.csv.gz"            
#> [12] "sector_profile_upstream_products.csv.gz"

read_csv(toy_emissions_profile_products_ecoinvent())
#> # A tibble: 18 × 8
#>    activity_uuid_product_uuid        co2_footprint ei_activity_name ei_geography
#>    <chr>                                     <dbl> <chr>            <chr>       
#>  1 833caa78-30df-4374-900f-7f88ab44…        11.1   iron-nickel-chr… RER         
#>  2 76269c17-78d6-420b-991a-aa38c51b…         0.487 market for deep… GLO         
#>  3 76269c17-78d6-420b-991a-aa38c51b…       479.    market for shed… GLO         
#>  4 833caa78-30df-4374-900f-7f88ab44…        11.6   iron-nickel-chr… RER         
#>  5 833caa78-30df-4374-900f-7f88ab44…         0.531 market for deep… GLO         
#>  6 76269c17-78d6-420b-991a-aa38c51b…       329.    market for shed… GLO         
#>  7 76269c17-78d6-420b-991a-aa38c51b…        14.1   iron-nickel-chr… RER         
#>  8 833caa78-30df-4374-900f-7f88ab44…         0.468 market for deep… GLO         
#>  9 bf94b5a7-b7a2-46d1-bb95-84bc560b…       464.    market for shed… GLO         
#> 10 bf94b5a7-b7a2-46d1-bb95-84bc560b…         7.77  iron-nickel-chr… RER         
#> 11 76269c17-78d6-420b-991a-aa38c51b…         0.401 market for deep… GLO         
#> 12 833caa78-30df-4374-900f-7f88ab44…       218.    market for shed… GLO         
#> 13 833caa78-30df-4374-900f-7f88ab44…        10.7   iron-nickel-chr… RER         
#> 14 bf94b5a7-b7a2-46d1-bb95-84bc560b…         0.596 market for deep… GLO         
#> 15 bf94b5a7-b7a2-46d1-bb95-84bc560b…       429.    market for shed… GLO         
#> 16 76269c17-78d6-420b-991a-aa38c51b…        14.0   iron-nickel-chr… RER         
#> 17 bf94b5a7-b7a2-46d1-bb95-84bc560b…         0.518 market for deep… GLO         
#> 18 bf94b5a7-b7a2-46d1-bb95-84bc560b…       382.    market for shed… GLO         
#> # ℹ 4 more variables: isic_4digit <chr>, tilt_sector <chr>,
#> #   tilt_subsector <chr>, unit <chr>

toy_files() |>
  lapply(\(x) read_csv(toy_path(x))) |>
  setNames(toy_files())
#> $ecoinvent_activities.csv.gz
#> # A tibble: 100 × 5
#>    activity_uuid_product_…¹ activity_name geography reference_product_name unit 
#>    <chr>                    <chr>         <chr>     <chr>                  <chr>
#>  1 dabb3812-eee9-5d2b-bc23… bark chips, … CH        residual hardwood, wet m3   
#>  2 3b34f2a3-abfb-5681-ac78… market for n… GLO       nitrous oxide          kg   
#>  3 3a2ab192-109a-5fa4-b9d9… market for s… CH        sawdust, wet, measure… kg   
#>  4 16e0e4f7-a44f-55d5-ae85… market for s… CH        sewage sludge, 70% wa… kg   
#>  5 732c6740-c4fb-598d-89a0… phenolic res… RER       phenolic resin         kg   
#>  6 32ab1519-ba6d-5432-9c5d… treatment of… CN        sewage sludge, 97% wa… kg   
#>  7 d08ed49a-25fd-5766-bafc… heat and pow… US-WECC   electricity, high vol… kWh  
#>  8 6632b6ca-fdb9-5d16-a1b1… treatment of… Europe w… organic nitrogen fert… kg   
#>  9 a73e89c1-abd9-54a1-8c44… catch crop g… CH        ryegrass silage        kg   
#> 10 da6fd7f1-4ee6-5491-81a9… nuclear fuel… RoW       nuclear fuel element,… kg   
#> # ℹ 90 more rows
#> # ℹ abbreviated name: ¹​activity_uuid_product_uuid
#> 
#> $ecoinvent_europages.csv.gz
#> # A tibble: 100 × 8
#>    ep_id      country main_activity clustered activity_uuid_produc…¹ multi_match
#>    <chr>      <chr>   <chr>         <chr>     <chr>                  <lgl>      
#>  1 0b0ae0f9e… germany service prov… air puri… bcdcd9f2-a3d9-58a3-b2… TRUE       
#>  2 0b0ae0f9e… germany service prov… air puri… 68a453fd-c49c-5358-9e… TRUE       
#>  3 0dde317dd… france  missing       aircraft… d7739cef-e1e3-5084-97… TRUE       
#>  4 0dde317dd… france  missing       aircraft… b2559f83-c1b9-51a9-a2… TRUE       
#>  5 0dde317dd… germany missing       aircraft… d7739cef-e1e3-5084-97… TRUE       
#>  6 0dde317dd… germany missing       aircraft… b2559f83-c1b9-51a9-a2… TRUE       
#>  7 0dde317dd… germany service prov… aircraft… d7739cef-e1e3-5084-97… TRUE       
#>  8 0dde317dd… germany service prov… aircraft… b2559f83-c1b9-51a9-a2… TRUE       
#>  9 f622bd01b… france  service prov… aircraft… 39ff049a-3abf-51e6-a7… TRUE       
#> 10 f622bd01b… france  service prov… aircraft… 1c0ee497-bffd-55f5-99… TRUE       
#> # ℹ 90 more rows
#> # ℹ abbreviated name: ¹​activity_uuid_product_uuid
#> # ℹ 2 more variables: completion <chr>, category <chr>
#> 
#> $ecoinvent_inputs.csv.gz
#> # A tibble: 52 × 3
#>    input_activity_uuid_product_uuid             exchange_name exchange_unit_name
#>    <chr>                                        <chr>         <chr>             
#>  1 7ac71fd7-a65b-5f2c-9289-7335f9945c11_fef44c… aluminium, w… kg                
#>  2 3b190359-a32e-5294-af63-983f38ce6525_759b89… electricity,… kWh               
#>  3 62b803ad-e3ff-516b-947d-f08eea52c702_fbb039… copper, cath… kg                
#>  4 372a1991-e0af-5fbf-8611-295a535373ad_9ba482… reinforcing … kg                
#>  5 531db396-1434-54e5-b6c4-c2b4323471cb_751b5e… stone wool, … kg                
#>  6 c93a2afc-7e58-50b6-af0e-586f71a3de0e_bfd577… waste minera… kg                
#>  7 3a29c9e0-4183-588d-95a9-502b55d2c513_bfd577… waste minera… kg                
#>  8 2330b528-6e31-5a99-9801-73834e2a835f_6f2eb4… waste wood, … kg                
#>  9 79d6450d-f9ad-5619-89c3-05c8d7622af3_b0f4c2… diesel, burn… MJ                
#> 10 044043d2-bdfc-55f1-9d2d-e8431d5266c7_8cb650… steel, low-a… kg                
#> # ℹ 42 more rows
#> 
#> $emissions_profile_any_companies.csv.gz
#> # A tibble: 76 × 7
#>    activity_uuid_product_uuid    clustered companies_id country ei_activity_name
#>    <chr>                         <chr>     <chr>        <chr>   <chr>           
#>  1 76269c17-78d6-420b-991a-aa38… tent      antimonarch… germany market for shed…
#>  2 76269c17-78d6-420b-991a-aa38… table hi… celestial_l… spain   market for shed…
#>  3 76269c17-78d6-420b-991a-aa38… surface … nonphilosop… germany market for deep…
#>  4 76269c17-78d6-420b-991a-aa38… surface … nonphilosop… germany market for deep…
#>  5 76269c17-78d6-420b-991a-aa38… tent      asteria_meg… austria market for shed…
#>  6 76269c17-78d6-420b-991a-aa38… tent      quasifaithf… germany market for shed…
#>  7 76269c17-78d6-420b-991a-aa38… open spa… spectacular… france  market for shed…
#>  8 76269c17-78d6-420b-991a-aa38… tent      contrite_si… germany market for shed…
#>  9 76269c17-78d6-420b-991a-aa38… tent      harmless_ow… germany market for shed…
#> 10 76269c17-78d6-420b-991a-aa38… tent      fascist_mai… germany market for shed…
#> # ℹ 66 more rows
#> # ℹ 2 more variables: main_activity <chr>, unit <chr>
#> 
#> $emissions_profile_products_ecoinvent.csv.gz
#> # A tibble: 18 × 8
#>    activity_uuid_product_uuid        co2_footprint ei_activity_name ei_geography
#>    <chr>                                     <dbl> <chr>            <chr>       
#>  1 833caa78-30df-4374-900f-7f88ab44…        11.1   iron-nickel-chr… RER         
#>  2 76269c17-78d6-420b-991a-aa38c51b…         0.487 market for deep… GLO         
#>  3 76269c17-78d6-420b-991a-aa38c51b…       479.    market for shed… GLO         
#>  4 833caa78-30df-4374-900f-7f88ab44…        11.6   iron-nickel-chr… RER         
#>  5 833caa78-30df-4374-900f-7f88ab44…         0.531 market for deep… GLO         
#>  6 76269c17-78d6-420b-991a-aa38c51b…       329.    market for shed… GLO         
#>  7 76269c17-78d6-420b-991a-aa38c51b…        14.1   iron-nickel-chr… RER         
#>  8 833caa78-30df-4374-900f-7f88ab44…         0.468 market for deep… GLO         
#>  9 bf94b5a7-b7a2-46d1-bb95-84bc560b…       464.    market for shed… GLO         
#> 10 bf94b5a7-b7a2-46d1-bb95-84bc560b…         7.77  iron-nickel-chr… RER         
#> 11 76269c17-78d6-420b-991a-aa38c51b…         0.401 market for deep… GLO         
#> 12 833caa78-30df-4374-900f-7f88ab44…       218.    market for shed… GLO         
#> 13 833caa78-30df-4374-900f-7f88ab44…        10.7   iron-nickel-chr… RER         
#> 14 bf94b5a7-b7a2-46d1-bb95-84bc560b…         0.596 market for deep… GLO         
#> 15 bf94b5a7-b7a2-46d1-bb95-84bc560b…       429.    market for shed… GLO         
#> 16 76269c17-78d6-420b-991a-aa38c51b…        14.0   iron-nickel-chr… RER         
#> 17 bf94b5a7-b7a2-46d1-bb95-84bc560b…         0.518 market for deep… GLO         
#> 18 bf94b5a7-b7a2-46d1-bb95-84bc560b…       382.    market for shed… GLO         
#> # ℹ 4 more variables: isic_4digit <chr>, tilt_sector <chr>,
#> #   tilt_subsector <chr>, unit <chr>
#> 
#> $emissions_profile_upstream_products_ecoinvent.csv.gz
#> # A tibble: 96 × 11
#>    activity_uuid_product_…¹ ei_activity_name ei_geography input_activity_uuid_…²
#>    <chr>                    <chr>            <chr>        <chr>                 
#>  1 bf94b5a7-b7a2-46d1-bb95… market for deep… RoW          55a5ac05-ab15-5a27-9d…
#>  2 bf94b5a7-b7a2-46d1-bb95… market for shed… RoW          bc548877-9cc6-590d-ba…
#>  3 bf94b5a7-b7a2-46d1-bb95… iron-nickel-chr… GLO          bdc93cd8-00b4-5b3e-99…
#>  4 bf94b5a7-b7a2-46d1-bb95… iron-nickel-chr… RER          fdb1f848-173f-5fe1-96…
#>  5 bf94b5a7-b7a2-46d1-bb95… iron-nickel-chr… RER          95fcd1bb-4dc6-516a-a3…
#>  6 bf94b5a7-b7a2-46d1-bb95… iron-nickel-chr… RER          daef2f9a-4108-52ae-90…
#>  7 bf94b5a7-b7a2-46d1-bb95… iron-nickel-chr… RER          3b190359-a32e-5294-af…
#>  8 bf94b5a7-b7a2-46d1-bb95… iron-nickel-chr… GLO          2c92cdcd-29df-53ba-a2…
#>  9 bf94b5a7-b7a2-46d1-bb95… iron-nickel-chr… Europe, wit… 9392c694-12a6-5cd7-a4…
#> 10 bf94b5a7-b7a2-46d1-bb95… iron-nickel-chr… CH           c18c6cc9-4a26-5c47-9e…
#> # ℹ 86 more rows
#> # ℹ abbreviated names: ¹​activity_uuid_product_uuid,
#> #   ²​input_activity_uuid_product_uuid
#> # ℹ 7 more variables: input_co2_footprint <dbl>, input_ei_activity_name <chr>,
#> #   input_isic_4digit <chr>, input_reference_product_name <chr>,
#> #   input_tilt_sector <chr>, input_tilt_subsector <chr>, input_unit <chr>
#> 
#> $europages_companies.csv.gz
#> # A tibble: 3 × 7
#>   company_name country company_city postcode address  main_activity companies_id
#>   <chr>        <chr>   <chr>           <dbl> <chr>    <chr>         <chr>       
#> 1 company C    austria voitsberg        8570 ruhmann… service prov… id3         
#> 2 company B    germany berlin          13353 sprenge… distributor   id2         
#> 3 company A    germany frankfurt       60316 wittels… manufacturer… id1         
#> 
#> $isic_name.csv.gz
#> # A tibble: 182 × 2
#>    isic_4digit isic_4digit_name_ecoinvent                                      
#>    <chr>       <chr>                                                           
#>  1 0111        Growing of cereals (except rice), leguminous crops and oil seeds
#>  2 0112        Growing of rice                                                 
#>  3 0113        Growing of vegetables and melons, roots and tubers              
#>  4 0114        Growing of sugar cane                                           
#>  5 0116        Growing of fibre crops                                          
#>  6 0119        Growing of other non-perennial crops                            
#>  7 0121        Growing of grapes                                               
#>  8 0122        Growing of tropical and subtropical fruits                      
#>  9 0123        Growing of citrus fruits                                        
#> 10 0124        Growing of pome fruits and stone fruits                         
#> # ℹ 172 more rows
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
