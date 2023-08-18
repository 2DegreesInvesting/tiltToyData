
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

toy_files()
#> [1] "emissions_profile_any_companies.csv.gz"     "emissions_profile_products.csv.gz"          "emissions_profile_upstream_products.csv.gz" "sector_profile_any_scenarios.csv.gz"        "sector_profile_companies.csv.gz"            "sector_profile_upstream_companies.csv.gz"   "sector_profile_upstream_products.csv.gz"

toy_path(toy_files()[[1]])
#> [1] "/tmp/RtmptAYd79/temp_libpath767aa686ec606/tiltToyData/extdata/emissions_profile_any_companies.csv.gz"

toy_files() |> 
  lapply(\(x) read_csv(toy_path(x), show_col_types = FALSE)) |> 
  setNames(toy_files())
#> $emissions_profile_any_companies.csv.gz
#> # A tibble: 9 × 4
#>   activity_uuid_product_uuid                                                clustered   company_id                               unit 
#>   <chr>                                                                     <chr>       <chr>                                    <chr>
#> 1 0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0-4cce-93b4-0745344da5fa stove       fleischerei-stiefsohn_00000005219477-001 unit 
#> 2 be06d25c-73dc-55fb-965b-0f300453e380_98b48ff2-2200-4b08-9dec-9c7c0e3585bc oven        fleischerei-stiefsohn_00000005219477-001 unit 
#> 3 977d997e-c257-5033-ba39-d0edeeef4ba2_0ace02fa-eca5-482d-a829-c18e46a52db4 steel       pecheries-basques_fra316541-00101        kg   
#> 4 ebb8475e-ff57-5e4e-937b-b5788186a5ca_ccee034c-8b6c-40d6-ac36-4c70c4623efa aged cheese hoche-butter-gmbh_deu422723-693847001    kg   
#> 5 ebb8475e-ff57-5e4e-937b-b5788186a5ca_ccee034c-8b6c-40d6-ac36-4c70c4623efa aged cheese vicquelin-espaces-verts_fra697272-00101  kg   
#> 6 ebb8475e-ff57-5e4e-937b-b5788186a5ca_ccee034c-8b6c-40d6-ac36-4c70c4623efa cheese      bst-procontrol-gmbh_00000005104947-001   kg   
#> 7 2f7b77a7-1556-5c1b-b0aa-c4534ddc8885_38d493e9-6feb-4c66-86eb-2253ef8ee54d cream       leider-gmbh_00000005064318-001           kg   
#> 8 2f7b77a7-1556-5c1b-b0aa-c4534ddc8885_38d493e9-6feb-4c66-86eb-2253ef8ee54d rubber      cheries-baqu_neu316541-00101             kg   
#> 9 <NA>                                                                      apple       ca-coity-trg-aua-gmbh_00000384-001       <NA> 
#> 
#> $emissions_profile_products.csv.gz
#> # A tibble: 5 × 6
#>   co2_footprint tilt_sector    unit  isic_4digit activity_uuid_product_uuid                                                ei_activity_name                      
#>           <dbl> <chr>          <chr>       <dbl> <chr>                                                                     <chr>                                 
#> 1        176.   Industry       unit         2560 0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0-4cce-93b4-0745344da5fa cookstove production or electric      
#> 2         58.1  Industry       unit         2560 be06d25c-73dc-55fb-965b-0f300453e380_98b48ff2-2200-4b08-9dec-9c7c0e3585bc microwave oven production             
#> 3          4.95 Steel & Metals kg           2870 977d997e-c257-5033-ba39-d0edeeef4ba2_0ace02fa-eca5-482d-a829-c18e46a52db4 market for steel, chromium steel      
#> 4         12.5  Agriculture    kg           1780 ebb8475e-ff57-5e4e-937b-b5788186a5ca_ccee034c-8b6c-40d6-ac36-4c70c4623efa cheese production, soft, from cow milk
#> 5          2.07 Industry       kg           2679 2f7b77a7-1556-5c1b-b0aa-c4534ddc8885_38d493e9-6feb-4c66-86eb-2253ef8ee54d market for seal, natural rubber based 
#> 
#> $emissions_profile_upstream_products.csv.gz
#> # A tibble: 33 × 6
#>    input_co2_footprint input_tilt_sector input_unit input_isic_4digit input_activity_uuid_product_uuid                                     activity_uuid_product_uuid                                               
#>                  <dbl> <chr>             <chr>                  <dbl> <chr>                                                                <chr>                                                                    
#>  1             7.07e+0 Inudstry          kg                      2560 5de8c337-dea9-5c1f-9d90-002de27188be_8911bd8c-a96f-4440-9f8e-a7dacf5 0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0-4cce-93b4-0745344da5fa
#>  2             3.99e+1 Inudstry          kwh                     2560 1aeb18b9-8355-560f-82aa-543c771c4d61_a0e53510-b90b-43ba-80cc-7600f5d 0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0-4cce-93b4-0745344da5fa
#>  3             5.12e-1 Inudstry          kg                      2560 22704506-7707-5ae7-990d-ebf01ac04fb5_50c41012-3b00-429d-ace3-40d0    0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0-4cce-93b4-0745344da5fa
#>  4             1.24e+0 Inudstry          kg                      2560 92078219-1ed3-5215-9f70-931cdefad520_5c21b18e-e32d-4c76-8d16-2238632 0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0-4cce-93b4-0745344da5fa
#>  5             2.12e+1 Inudstry          kwh                     2560 9d483329-b09a-5513-b1bc-722cb211e928_bd4dca-497e-bdd9-fcd343012087   0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0-4cce-93b4-0745344da5fa
#>  6             1.24e-9 Inudstry          kg                      2560 8709b463-732e-592e-9b88-999ed17af48f_6b6b3a15-e0-baea-cda98afc61c2   0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0-4cce-93b4-0745344da5fa
#>  7             7   e-9 Inudstry          kg                      2560 d44e7db1-4dda-51ed2929a8f1a2_32e60fbc-4778-470c-9653-feb859a3418f    0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0-4cce-93b4-0745344da5fa
#>  8             1.04e+0 Inudstry          kg                      2560 7c7718bb-2372-5d04-a7ac-1ae5b12b05e3_61396bcb-bf35-411a-a6a6-85e8    0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0-4cce-93b4-0745344da5fa
#>  9             1.12e+0 Inudstry          kg                      2560 f08f52c5-559-92f7-ed216a32eed2_1b30b018-ac39-41f4-a9e0-92057ee       be06d25c-73dc-55fb-965b-0f300453e380_98b48ff2-2200-4b08-9dec-9c7c0e3585bc
#> 10             3.51e+0 Inudstry          kg                      2560 c5f28517-0c26-5746-9afe-3f3a48bfc71c_85a9dda1a-105ab3269262          be06d25c-73dc-55fb-965b-0f300453e380_98b48ff2-2200-4b08-9dec-9c7c0e3585bc
#> # ℹ 23 more rows
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
#>    company_id                               company_name          clustered activity_uuid_product_uuid                                     isic_4digit tilt_sector           tilt_subsector         type  sector              subsector          
#>    <chr>                                    <chr>                 <chr>     <chr>                                                                <dbl> <chr>                 <chr>                  <chr> <chr>               <chr>              
#>  1 fleischerei-stiefsohn_00000005219477-001 fleischerei-stiefsohn steel     0faa7ecb-fef2-5117-8993-387c1236-001e-49b5-aa3d-810c0214f9ce          2410 <NA>                  <NA>                   ipr   industry            iron and steel     
#>  2 fleischerei-stiefsohn_00000005219477-001 fleischerei-stiefsohn steel     0faa7ecb-fef2-5117-8993-387c1236-001e-49b5-aa3d-810c0214f9ce          2410 <NA>                  <NA>                   weo   total               iron and steel     
#>  3 pecheries-basques_fra316541-00101        pecheries-basques     nitrogen  03fbf989-9a1a-5e3d-a5bd-15f36f89b3-af52-4826-97f7-cc35f80f226f        2029 <NA>                  <NA>                   ipr   industry            chemicals          
#>  4 pecheries-basques_fra316541-00101        pecheries-basques     nitrogen  03fbf989-9a1a-5e3d-a5bd-15f36f89b3-af52-4826-97f7-cc35f80f226f        2029 <NA>                  <NA>                   weo   total               chemicals          
#>  5 hoche-butter-gmbh_deu422723-693847001    hoche-butter-gmbh     waste     <NA>                                                                    NA energy                bioenergy & waste      ipr   total               energy             
#>  6 hoche-butter-gmbh_deu422723-693847001    hoche-butter-gmbh     waste     <NA>                                                                    NA energy                bioenergy & waste      weo   bioenergy and waste total energy supply
#>  7 hoche-butter-gmbh_deu422723-693847002    hoche-butter-gmbh     car       <NA>                                                                    NA transportation        transportation         ipr   transport           other transport    
#>  8 hoche-butter-gmbh_deu422723-693847002    hoche-butter-gmbh     car       <NA>                                                                    NA transportation        transportation         weo   total               transport          
#>  9 hoche-butter-gmbh_deu422723-693847003    hoche-butter-gmbh     heater    <NA>                                                                    NA construction industry construction buildings ipr   buildings           <NA>               
#> 10 hoche-butter-gmbh_deu422723-693847003    hoche-butter-gmbh     heater    <NA>                                                                    NA construction industry construction buildings weo   total               buildings          
#> # ℹ 18 more rows
#> 
#> $sector_profile_upstream_companies.csv.gz
#> # A tibble: 8 × 6
#>   company_id                               clustered   activity_uuid_product_uuid                                                ei_activity_name                       unit  tilt_sector
#>   <chr>                                    <chr>       <chr>                                                                     <chr>                                  <chr> <chr>      
#> 1 fleischerei-stiefsohn_00000005219477-001 stove       0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0-4cce-93b4-0745344da5fa cookstove production or electric       unit  energy     
#> 2 fleischerei-stiefsohn_00000005219477-001 oven        be06d25c-73dc-55fb-965b-0f300453e380_98b48ff2-2200-4b08-9dec-9c7c0e3585bc microwave oven production              unit  energy     
#> 3 pecheries-basques_fra316541-00101        steel       977d997e-c257-5033-ba39-d0edeeef4ba2_0ace02fa-eca5-482d-a829-c18e46a52db4 market for steel, chromium steel       kg    energy     
#> 4 hoche-butter-gmbh_deu422723-693847001    aged cheese ebb8475e-ff57-5e4e-937b-b5788186a5ca_ccee034c-8b6c-40d6-ac36-4c70c4623efa cheese production, soft, from cow milk kg    <NA>       
#> 5 vicquelin-espaces-verts_fra697272-00101  aged cheese ebb8475e-ff57-5e4e-937b-b5788186a5ca_ccee034c-8b6c-40d6-ac36-4c70c4623efa cheese production, soft, from cow milk kg    land use   
#> 6 bst-procontrol-gmbh_00000005104947-001   cheese      ebb8475e-ff57-5e4e-937b-b5788186a5ca_ccee034c-8b6c-40d6-ac36-4c70c4623efa market for cheese, fresh, unripened    kg    land use   
#> 7 leider-gmbh_00000005064318-001           cream       2f7b77a7-1556-5c1b-b0aa-c4534ddc8885_38d493e9-6feb-4c66-86eb-2253ef8ee54d market for seal, natural rubber based  kg    land use   
#> 8 cheries-baqu_neu316541-00101             rubber      2f7b77a7-1556-5c1b-b0aa-c4534ddc8885_38d493e9-6feb-4c66-86eb-2253ef8ee54d seal production, natural rubber based  kg    land use   
#> 
#> $sector_profile_upstream_products.csv.gz
#> # A tibble: 74 × 10
#>    activity_uuid_product_uuid                                                input_activity_uuid_product_uuid                                          input_reference_product_name input_unit input_isic_4digit input_tilt_sector     input_tilt_subsector type  sector              subsector          
#>    <chr>                                                                     <chr>                                                                     <chr>                        <chr>                  <dbl> <chr>                 <chr>                <chr> <chr>               <chr>              
#>  1 0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0-4cce-93b4-0745344da5fa 5de8c337-dea9-5c1f-9d90-002de27188be_8911bd8c-a96f-4440-9f8e-a7dacf5e79de biowaste                     kg                      3821 non-metallic minerals raw minerals         ipr   no_match            no_match           
#>  2 0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0-4cce-93b4-0745344da5fa 5de8c337-dea9-5c1f-9d90-002de27188be_8911bd8c-a96f-4440-9f8e-a7dacf5e79de biowaste                     kg                      3821 non-metallic minerals raw minerals         weo   bioenergy and waste total energy supply
#>  3 0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0-4cce-93b4-0745344da5fa 1aeb18b9-8355-560f-82aa-543c771c4d61_a0e53510-b90b-43ba-80cc-7600f5da004f chemical, inorganic          kg                      2011 non-metallic minerals raw minerals         ipr   industry            chemicals          
#>  4 0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0-4cce-93b4-0745344da5fa 1aeb18b9-8355-560f-82aa-543c771c4d61_a0e53510-b90b-43ba-80cc-7600f5da004f chemical, inorganic          kg                      2011 non-metallic minerals raw minerals         weo   total               chemicals          
#>  5 0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0-4cce-93b4-0745344da5fa 22704506-7707-5ae7-990d-ebf01ac04fb5_50c41012-3b00-429d-ace3-40d0afb69746 chemical, organic            kg                      1201 non-metallic minerals raw minerals         ipr   industry            chemicals          
#>  6 0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0-4cce-93b4-0745344da5fa 22704506-7707-5ae7-990d-ebf01ac04fb5_50c41012-3b00-429d-ace3-40d0afb69746 chemical, organic            kg                      1201 non-metallic minerals raw minerals         weo   total               chemicals          
#>  7 0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0-4cce-93b4-0745344da5fa 92078219-1ed3-5215-9f70-931cdefad520_5c21b18e-e32d-4c76-8d16-2238632163c2 cow milk                     kg                      4141 non-metallic minerals raw minerals         ipr   land use            <NA>               
#>  8 0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0-4cce-93b4-0745344da5fa 92078219-1ed3-5215-9f70-931cdefad520_5c21b18e-e32d-4c76-8d16-2238632163c2 cow milk                     kg                      4141 non-metallic minerals raw minerals         weo   no_match            no_match           
#>  9 0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0-4cce-93b4-0745344da5fa 9d483329-b09a-5513-b1bc-722cb211e928_bded6c5a-4dca-497e-bdd9-fcd343012087 cream, from cow milk         kg                      1050 non-metallic minerals raw minerals         ipr   industry            other industry     
#> 10 0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0-4cce-93b4-0745344da5fa 9d483329-b09a-5513-b1bc-722cb211e928_bded6c5a-4dca-497e-bdd9-fcd343012087 cream, from cow milk         kg                      1050 non-metallic minerals raw minerals         weo   total               industry           
#> # ℹ 64 more rows
```
