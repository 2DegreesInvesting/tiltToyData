# emissions_profile_any_companies hasn't changed

    Code
      companies
    Output
      # A tibble: 9 x 4
        activity_uuid_product_uuid                                                clustered   company_id                               unit 
        <chr>                                                                     <chr>       <chr>                                    <chr>
      1 0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0-4cce-93b4-0745344da5fa stove       fleischerei-stiefsohn_00000005219477-001 unit 
      2 be06d25c-73dc-55fb-965b-0f300453e380_98b48ff2-2200-4b08-9dec-9c7c0e3585bc oven        fleischerei-stiefsohn_00000005219477-001 unit 
      3 977d997e-c257-5033-ba39-d0edeeef4ba2_0ace02fa-eca5-482d-a829-c18e46a52db4 steel       pecheries-basques_fra316541-00101        kg   
      4 ebb8475e-ff57-5e4e-937b-b5788186a5ca_ccee034c-8b6c-40d6-ac36-4c70c4623efa aged cheese hoche-butter-gmbh_deu422723-693847001    kg   
      5 ebb8475e-ff57-5e4e-937b-b5788186a5ca_ccee034c-8b6c-40d6-ac36-4c70c4623efa aged cheese vicquelin-espaces-verts_fra697272-00101  kg   
      6 ebb8475e-ff57-5e4e-937b-b5788186a5ca_ccee034c-8b6c-40d6-ac36-4c70c4623efa cheese      bst-procontrol-gmbh_00000005104947-001   kg   
      7 2f7b77a7-1556-5c1b-b0aa-c4534ddc8885_38d493e9-6feb-4c66-86eb-2253ef8ee54d cream       leider-gmbh_00000005064318-001           kg   
      8 2f7b77a7-1556-5c1b-b0aa-c4534ddc8885_38d493e9-6feb-4c66-86eb-2253ef8ee54d rubber      cheries-baqu_neu316541-00101             kg   
      9 <NA>                                                                      apple       ca-coity-trg-aua-gmbh_00000384-001       <NA> 

# emissions_profile_products hasn't changed

    Code
      products
    Output
      # A tibble: 5 x 6
        co2_footprint tilt_sector    unit  isic_4digit activity_uuid_product_uuid                                                ei_activity_name                      
                <dbl> <chr>          <chr>       <dbl> <chr>                                                                     <chr>                                 
      1        176.   Industry       unit         2560 0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0-4cce-93b4-0745344da5fa cookstove production or electric      
      2         58.1  Industry       unit         2560 be06d25c-73dc-55fb-965b-0f300453e380_98b48ff2-2200-4b08-9dec-9c7c0e3585bc microwave oven production             
      3          4.95 Steel & Metals kg           2870 977d997e-c257-5033-ba39-d0edeeef4ba2_0ace02fa-eca5-482d-a829-c18e46a52db4 market for steel, chromium steel      
      4         12.5  Agriculture    kg           1780 ebb8475e-ff57-5e4e-937b-b5788186a5ca_ccee034c-8b6c-40d6-ac36-4c70c4623efa cheese production, soft, from cow milk
      5          2.07 Industry       kg           2679 2f7b77a7-1556-5c1b-b0aa-c4534ddc8885_38d493e9-6feb-4c66-86eb-2253ef8ee54d market for seal, natural rubber based 

# emissions_profile_upstream_products hasn't changed

    Code
      upstream_products
    Output
      # A tibble: 33 x 6
         input_co2_footprint input_tilt_sector input_unit input_isic_4digit input_activity_uuid_product_uuid                                     activity_uuid_product_uuid                                               
                       <dbl> <chr>             <chr>                  <dbl> <chr>                                                                <chr>                                                                    
       1             7.07e+0 Inudstry          kg                      2560 5de8c337-dea9-5c1f-9d90-002de27188be_8911bd8c-a96f-4440-9f8e-a7dacf5 0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0-4cce-93b4-0745344da5fa
       2             3.99e+1 Inudstry          kwh                     2560 1aeb18b9-8355-560f-82aa-543c771c4d61_a0e53510-b90b-43ba-80cc-7600f5d 0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0-4cce-93b4-0745344da5fa
       3             5.12e-1 Inudstry          kg                      2560 22704506-7707-5ae7-990d-ebf01ac04fb5_50c41012-3b00-429d-ace3-40d0    0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0-4cce-93b4-0745344da5fa
       4             1.24e+0 Inudstry          kg                      2560 92078219-1ed3-5215-9f70-931cdefad520_5c21b18e-e32d-4c76-8d16-2238632 0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0-4cce-93b4-0745344da5fa
       5             2.12e+1 Inudstry          kwh                     2560 9d483329-b09a-5513-b1bc-722cb211e928_bd4dca-497e-bdd9-fcd343012087   0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0-4cce-93b4-0745344da5fa
       6             1.24e-9 Inudstry          kg                      2560 8709b463-732e-592e-9b88-999ed17af48f_6b6b3a15-e0-baea-cda98afc61c2   0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0-4cce-93b4-0745344da5fa
       7             7   e-9 Inudstry          kg                      2560 d44e7db1-4dda-51ed2929a8f1a2_32e60fbc-4778-470c-9653-feb859a3418f    0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0-4cce-93b4-0745344da5fa
       8             1.04e+0 Inudstry          kg                      2560 7c7718bb-2372-5d04-a7ac-1ae5b12b05e3_61396bcb-bf35-411a-a6a6-85e8    0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0-4cce-93b4-0745344da5fa
       9             1.12e+0 Inudstry          kg                      2560 f08f52c5-559-92f7-ed216a32eed2_1b30b018-ac39-41f4-a9e0-92057ee       be06d25c-73dc-55fb-965b-0f300453e380_98b48ff2-2200-4b08-9dec-9c7c0e3585bc
      10             3.51e+0 Inudstry          kg                      2560 c5f28517-0c26-5746-9afe-3f3a48bfc71c_85a9dda1a-105ab3269262          be06d25c-73dc-55fb-965b-0f300453e380_98b48ff2-2200-4b08-9dec-9c7c0e3585bc
      # i 23 more rows

