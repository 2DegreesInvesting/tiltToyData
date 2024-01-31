
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
install.packages("tiltToyData", repos = c("https://2degreesinvesting.r-universe.dev", getOption("repos")))
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
#> # A tibble: 3 × 8
#>   activity_uuid_produc…¹ co2_footprint ei_activity_name ei_geography isic_4digit
#>   <chr>                          <dbl> <chr>            <chr>        <chr>      
#> 1 bf94b5a7-b7a2-46d1-bb…        10.4   iron-nickel-chr… RER          '2410'     
#> 2 833caa78-30df-4374-90…         0.693 market for deep… GLO          '2591'     
#> 3 76269c17-78d6-420b-99…       303.    market for shed… GLO          '4100'     
#> # ℹ abbreviated name: ¹​activity_uuid_product_uuid
#> # ℹ 3 more variables: tilt_sector <chr>, tilt_subsector <chr>, unit <chr>

toy_files() |>
  lapply(\(x) read_csv(toy_path(x))) |>
  setNames(toy_files())
#> $ecoinvent_activities.csv.gz
#> # A tibble: 3 × 5
#>   activity_uuid_product_u…¹ activity_name geography reference_product_name unit 
#>   <chr>                     <chr>         <chr>     <chr>                  <chr>
#> 1 bf94b5a7-b7a2-46d1-bb95-… iron-nickel-… tilt_wor… iron-nickel-chromium … kg   
#> 2 833caa78-30df-4374-900f-… market for d… tilt_wor… deep drawing, steel, … kg   
#> 3 76269c17-78d6-420b-991a-… market for s… tilt_wor… shed, large, wood, no… m2   
#> # ℹ abbreviated name: ¹​activity_uuid_product_uuid
#> 
#> $ecoinvent_europages.csv.gz
#> # A tibble: 33 × 6
#>    country main_activity clustered activity_uuid_produc…¹ multi_match completion
#>    <chr>   <chr>         <chr>     <chr>                  <lgl>       <chr>     
#>  1 austria distributor   tent      76269c17-78d6-420b-99… FALSE       low       
#>  2 austria wholesaler    tent      76269c17-78d6-420b-99… FALSE       low       
#>  3 nether… retailer      tent      76269c17-78d6-420b-99… FALSE       low       
#>  4 germany wholesaler    tent      76269c17-78d6-420b-99… FALSE       low       
#>  5 germany distributor   tent      76269c17-78d6-420b-99… FALSE       low       
#>  6 austria wholesaler    sheds, c… 76269c17-78d6-420b-99… FALSE       low       
#>  7 nether… distributor   prefabri… 76269c17-78d6-420b-99… FALSE       low       
#>  8 nether… wholesaler    prefabri… 76269c17-78d6-420b-99… FALSE       low       
#>  9 spain   distributor   prefabri… 76269c17-78d6-420b-99… FALSE       low       
#> 10 nether… retailer      porches,… 76269c17-78d6-420b-99… FALSE       low       
#> # ℹ 23 more rows
#> # ℹ abbreviated name: ¹​activity_uuid_product_uuid
#> 
#> $ecoinvent_inputs.csv.gz
#> # A tibble: 16 × 9
#>    activity_uuid_produc…¹ activity_name product_geography input_activity_uuid_…²
#>    <chr>                  <chr>         <chr>             <chr>                 
#>  1 833caa78-30df-4374-90… market for d… tilt_world        f8b471d4-b6b5-4e91-91…
#>  2 76269c17-78d6-420b-99… market for s… tilt_world        44e5e288-4f81-40d0-88…
#>  3 bf94b5a7-b7a2-46d1-bb… iron-nickel-… tilt_world        9cdbbd45-c7e6-4308-aa…
#>  4 bf94b5a7-b7a2-46d1-bb… iron-nickel-… tilt_world        983dd322-ac70-4167-af…
#>  5 bf94b5a7-b7a2-46d1-bb… iron-nickel-… tilt_world        7191f33c-f13f-4228-80…
#>  6 bf94b5a7-b7a2-46d1-bb… iron-nickel-… tilt_world        c58df129-466c-44c5-85…
#>  7 bf94b5a7-b7a2-46d1-bb… iron-nickel-… tilt_world        3a920a69-f567-4c9d-b7…
#>  8 bf94b5a7-b7a2-46d1-bb… iron-nickel-… tilt_world        cd68b4bd-d6ea-437f-95…
#>  9 bf94b5a7-b7a2-46d1-bb… iron-nickel-… tilt_world        875cd7e3-19a7-45e0-80…
#> 10 bf94b5a7-b7a2-46d1-bb… iron-nickel-… tilt_world        dd83290a-ca62-448c-81…
#> 11 bf94b5a7-b7a2-46d1-bb… iron-nickel-… tilt_world        6d77c0f7-076c-4e92-b0…
#> 12 bf94b5a7-b7a2-46d1-bb… iron-nickel-… tilt_world        e2e4b62e-300c-4418-aa…
#> 13 bf94b5a7-b7a2-46d1-bb… iron-nickel-… tilt_world        f4650b0c-02a4-4a1b-82…
#> 14 bf94b5a7-b7a2-46d1-bb… iron-nickel-… tilt_world        0014714d-33d9-46f1-8c…
#> 15 bf94b5a7-b7a2-46d1-bb… iron-nickel-… tilt_world        0428e3ea-d934-4df8-aa…
#> 16 bf94b5a7-b7a2-46d1-bb… iron-nickel-… tilt_world        35f71ed6-0c7e-4238-a3…
#> # ℹ abbreviated names: ¹​activity_uuid_product_uuid,
#> #   ²​input_activity_uuid_product_uuid
#> # ℹ 5 more variables: exchange_name <chr>, input_geography <chr>,
#> #   exchange_unit_name <chr>, input_priority <dbl>, ecoinvent_geography <chr>
#> 
#> $emissions_profile_any_companies.csv.gz
#> # A tibble: 76 × 7
#>    activity_uuid_product_uuid    clustered companies_id country ei_activity_name
#>    <chr>                         <chr>     <chr>        <chr>   <chr>           
#>  1 76269c17-78d6-420b-991a-aa38… tent      antimonarch… germany market for shed…
#>  2 76269c17-78d6-420b-991a-aa38… table hi… celestial_l… spain   market for shed…
#>  3 833caa78-30df-4374-900f-7f88… surface … nonphilosop… germany market for deep…
#>  4 833caa78-30df-4374-900f-7f88… surface … nonphilosop… germany market for deep…
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
#> # A tibble: 3 × 8
#>   activity_uuid_produc…¹ co2_footprint ei_activity_name ei_geography isic_4digit
#>   <chr>                          <dbl> <chr>            <chr>        <chr>      
#> 1 bf94b5a7-b7a2-46d1-bb…        10.4   iron-nickel-chr… RER          '2410'     
#> 2 833caa78-30df-4374-90…         0.693 market for deep… GLO          '2591'     
#> 3 76269c17-78d6-420b-99…       303.    market for shed… GLO          '4100'     
#> # ℹ abbreviated name: ¹​activity_uuid_product_uuid
#> # ℹ 3 more variables: tilt_sector <chr>, tilt_subsector <chr>, unit <chr>
#> 
#> $emissions_profile_upstream_products_ecoinvent.csv.gz
#> # A tibble: 16 × 11
#>    activity_uuid_product_…¹ ei_activity_name ei_geography input_activity_uuid_…²
#>    <chr>                    <chr>            <chr>        <chr>                 
#>  1 833caa78-30df-4374-900f… market for deep… RoW          f8b471d4-b6b5-4e91-91…
#>  2 76269c17-78d6-420b-991a… market for shed… RoW          44e5e288-4f81-40d0-88…
#>  3 bf94b5a7-b7a2-46d1-bb95… iron-nickel-chr… GLO          9cdbbd45-c7e6-4308-aa…
#>  4 bf94b5a7-b7a2-46d1-bb95… iron-nickel-chr… RER          983dd322-ac70-4167-af…
#>  5 bf94b5a7-b7a2-46d1-bb95… iron-nickel-chr… RER          7191f33c-f13f-4228-80…
#>  6 bf94b5a7-b7a2-46d1-bb95… iron-nickel-chr… RER          c58df129-466c-44c5-85…
#>  7 bf94b5a7-b7a2-46d1-bb95… iron-nickel-chr… RER          3a920a69-f567-4c9d-b7…
#>  8 bf94b5a7-b7a2-46d1-bb95… iron-nickel-chr… GLO          cd68b4bd-d6ea-437f-95…
#>  9 bf94b5a7-b7a2-46d1-bb95… iron-nickel-chr… Europe, wit… 875cd7e3-19a7-45e0-80…
#> 10 bf94b5a7-b7a2-46d1-bb95… iron-nickel-chr… CH           dd83290a-ca62-448c-81…
#> 11 bf94b5a7-b7a2-46d1-bb95… iron-nickel-chr… RER          6d77c0f7-076c-4e92-b0…
#> 12 bf94b5a7-b7a2-46d1-bb95… iron-nickel-chr… CH           e2e4b62e-300c-4418-aa…
#> 13 bf94b5a7-b7a2-46d1-bb95… iron-nickel-chr… GLO          f4650b0c-02a4-4a1b-82…
#> 14 bf94b5a7-b7a2-46d1-bb95… iron-nickel-chr… RER          0014714d-33d9-46f1-8c…
#> 15 bf94b5a7-b7a2-46d1-bb95… iron-nickel-chr… CH           0428e3ea-d934-4df8-aa…
#> 16 bf94b5a7-b7a2-46d1-bb95… iron-nickel-chr… GLO          35f71ed6-0c7e-4238-a3…
#> # ℹ abbreviated names: ¹​activity_uuid_product_uuid,
#> #   ²​input_activity_uuid_product_uuid
#> # ℹ 7 more variables: input_co2_footprint <dbl>, input_ei_activity_name <chr>,
#> #   input_isic_4digit <chr>, input_reference_product_name <chr>,
#> #   input_tilt_sector <chr>, input_tilt_subsector <chr>, input_unit <chr>
#> 
#> $europages_companies.csv.gz
#> # A tibble: 76 × 8
#>    companies_id company_name country company_city postcode address main_activity
#>    <chr>        <chr>        <chr>   <chr>        <chr>    <chr>   <chr>        
#>  1 warriorlike… warriorlike… germany grünwald     82031    bavari… wholesaler   
#>  2 leathery_ac… leathery_ac… germany düsseldorf   40468    ulmens… wholesaler   
#>  3 automotive_… automotive_… germany trier        54292    rheins… wholesaler   
#>  4 weatherproo… weatherproo… germany münchen      80337    tumbli… wholesaler   
#>  5 angular_ore… angular_ore… germany veitsbronn   90587    stockä… distributor  
#>  6 bereft_anch… bereft_anch… germany langenselbo… 63505    am fel… distributor  
#>  7 asteria_meg… asteria_meg… austria wilhelmsburg 3150     flesch… wholesaler   
#>  8 reversible_… reversible_… germany quickborn    25451    friedr… wholesaler   
#>  9 exportable_… exportable_… germany vlotho       32602    lange … wholesaler   
#> 10 comely_manta comely_manta germany henstedt-ul… 24558    hohenb… wholesaler   
#> # ℹ 66 more rows
#> # ℹ 1 more variable: clustered <chr>
#> 
#> $isic_name.csv.gz
#> # A tibble: 14 × 2
#>    isic_4digit isic_4digit_name_ecoinvent                                       
#>    <chr>       <chr>                                                            
#>  1 '0510'      Mining of hard coal                                              
#>  2 '2011'      Manufacture of basic chemicals                                   
#>  3 '2391'      Manufacture of refractory products                               
#>  4 '2394'      Manufacture of cement, lime and plaster                          
#>  5 '2410'      Manufacture of basic Iron & Steel                                
#>  6 '2420'      Manufacture of basic precious and other non-ferrous metals       
#>  7 '2591'      Forging, pressing, stamping and roll-forming of metal; powder me…
#>  8 '2790'      Manufacture of other electrical equipment                        
#>  9 '2815'      Manufacture of ovens, furnaces and furnace burners               
#> 10 '3510'      Electric power generation, transmission and distribution         
#> 11 '3520'      Manufacture of gas; distribution of gaseous fuels through mains  
#> 12 '3821'      Treatment and disposal of non-hazardous waste                    
#> 13 '3830'      Materials recovery                                               
#> 14 '4100'      Construction of buildings                                        
#> 
#> $sector_profile_any_scenarios.csv.gz
#> # A tibble: 86 × 8
#>    scenario region sector    subsector              year  value reductions type 
#>    <chr>    <chr>  <chr>     <chr>                 <dbl>  <dbl>      <dbl> <chr>
#>  1 1.5C RPS world  power     <NA>                   2030 5359.        0.58 ipr  
#>  2 1.5C RPS world  power     <NA>                   2050 -807.        1.06 ipr  
#>  3 1.5C RPS world  buildings <NA>                   2030 2454.        0.18 ipr  
#>  4 1.5C RPS world  buildings <NA>                   2050   61.3       0.98 ipr  
#>  5 1.5C RPS world  industry  iron and steel         2030 1872.        0.22 ipr  
#>  6 1.5C RPS world  industry  iron and steel         2050   88.3       0.96 ipr  
#>  7 1.5C RPS world  industry  non-metallic minerals  2030 2641.        0.13 ipr  
#>  8 1.5C RPS world  industry  non-metallic minerals  2050  592.        0.8  ipr  
#>  9 1.5C RPS world  industry  chemicals              2030 1218.        0.12 ipr  
#> 10 1.5C RPS world  industry  chemicals              2050  102.        0.93 ipr  
#> # ℹ 76 more rows
#> 
#> $sector_profile_companies.csv.gz
#> # A tibble: 152 × 10
#>    companies_id        company_name clustered activity_uuid_produc…¹ isic_4digit
#>    <chr>               <chr>        <chr>     <chr>                  <chr>      
#>  1 antimonarchy_canine absurd verl… tent      76269c17-78d6-420b-99… '4100'     
#>  2 antimonarchy_canine absurd verl… tent      76269c17-78d6-420b-99… '4100'     
#>  3 celestial_lovebird  alquisur ev… table hi… 76269c17-78d6-420b-99… '4100'     
#>  4 celestial_lovebird  alquisur ev… table hi… 76269c17-78d6-420b-99… '4100'     
#>  5 nonphilosophical_l… atc armoloy… surface … 833caa78-30df-4374-90… '2591'     
#>  6 nonphilosophical_l… atc armoloy… surface … 833caa78-30df-4374-90… '2591'     
#>  7 nonphilosophical_l… atc armoloy… surface … 833caa78-30df-4374-90… '2591'     
#>  8 nonphilosophical_l… atc armoloy… surface … 833caa78-30df-4374-90… '2591'     
#>  9 asteria_megalotomu… balzer hand… tent      76269c17-78d6-420b-99… '4100'     
#> 10 asteria_megalotomu… balzer hand… tent      76269c17-78d6-420b-99… '4100'     
#> # ℹ 142 more rows
#> # ℹ abbreviated name: ¹​activity_uuid_product_uuid
#> # ℹ 5 more variables: tilt_sector <chr>, tilt_subsector <chr>, type <chr>,
#> #   sector <chr>, subsector <chr>
#> 
#> $sector_profile_upstream_companies.csv.gz
#> # A tibble: 76 × 5
#>    companies_id               clustered activity_uuid_produc…¹ unit  tilt_sector
#>    <chr>                      <chr>     <chr>                  <chr> <chr>      
#>  1 antimonarchy_canine        tent      76269c17-78d6-420b-99… m2    constructi…
#>  2 asteria_megalotomusquinqu… tent      76269c17-78d6-420b-99… m2    constructi…
#>  3 quasifaithful_amphiuma     tent      76269c17-78d6-420b-99… m2    constructi…
#>  4 spectacular_americanriver… open spa… 76269c17-78d6-420b-99… m2    constructi…
#>  5 contrite_silkworm          tent      76269c17-78d6-420b-99… m2    constructi…
#>  6 harmless_owlbutterfly      tent      76269c17-78d6-420b-99… m2    constructi…
#>  7 charismatic_islandwhistler camper p… 76269c17-78d6-420b-99… m2    constructi…
#>  8 leathery_acornwoodpecker   exhibiti… 76269c17-78d6-420b-99… m2    constructi…
#>  9 skarn_gallinule            sheds, c… 76269c17-78d6-420b-99… m2    constructi…
#> 10 springloaded_newt          tent      76269c17-78d6-420b-99… m2    constructi…
#> # ℹ 66 more rows
#> # ℹ abbreviated name: ¹​activity_uuid_product_uuid
#> 
#> $sector_profile_upstream_products.csv.gz
#> # A tibble: 32 × 10
#>    activity_uuid_product_uuid      input_activity_uuid_…¹ input_reference_prod…²
#>    <chr>                           <chr>                  <chr>                 
#>  1 833caa78-30df-4374-900f-7f88ab… f8b471d4-b6b5-4e91-91… deep drawing, steel, …
#>  2 833caa78-30df-4374-900f-7f88ab… f8b471d4-b6b5-4e91-91… deep drawing, steel, …
#>  3 76269c17-78d6-420b-991a-aa38c5… 44e5e288-4f81-40d0-88… shed, large, wood, no…
#>  4 76269c17-78d6-420b-991a-aa38c5… 44e5e288-4f81-40d0-88… shed, large, wood, no…
#>  5 bf94b5a7-b7a2-46d1-bb95-84bc56… 3a920a69-f567-4c9d-b7… electricity, medium v…
#>  6 bf94b5a7-b7a2-46d1-bb95-84bc56… 3a920a69-f567-4c9d-b7… electricity, medium v…
#>  7 bf94b5a7-b7a2-46d1-bb95-84bc56… f4650b0c-02a4-4a1b-82… nickel, class 1       
#>  8 bf94b5a7-b7a2-46d1-bb95-84bc56… f4650b0c-02a4-4a1b-82… nickel, class 1       
#>  9 bf94b5a7-b7a2-46d1-bb95-84bc56… e2e4b62e-300c-4418-aa… natural gas, high pre…
#> 10 bf94b5a7-b7a2-46d1-bb95-84bc56… e2e4b62e-300c-4418-aa… natural gas, high pre…
#> # ℹ 22 more rows
#> # ℹ abbreviated names: ¹​input_activity_uuid_product_uuid,
#> #   ²​input_reference_product_name
#> # ℹ 7 more variables: input_unit <chr>, input_isic_4digit <chr>,
#> #   input_tilt_sector <chr>, input_tilt_subsector <chr>, type <chr>,
#> #   sector <chr>, subsector <chr>
```
