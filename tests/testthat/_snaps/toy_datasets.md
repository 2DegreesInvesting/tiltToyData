# emissions_profile_any_companies hasn't changed

    Code
      as.data.frame(data)
    Output
                                                       activity_uuid_product_uuid   clustered                             companies_id unit
      1 0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0-4cce-93b4-0745344da5fa       stove fleischerei-stiefsohn_00000005219477-001 unit
      2 be06d25c-73dc-55fb-965b-0f300453e380_98b48ff2-2200-4b08-9dec-9c7c0e3585bc        oven fleischerei-stiefsohn_00000005219477-001 unit
      3 977d997e-c257-5033-ba39-d0edeeef4ba2_0ace02fa-eca5-482d-a829-c18e46a52db4       steel        pecheries-basques_fra316541-00101   kg
      4 ebb8475e-ff57-5e4e-937b-b5788186a5ca_ccee034c-8b6c-40d6-ac36-4c70c4623efa aged cheese    hoche-butter-gmbh_deu422723-693847001   kg
      5 ebb8475e-ff57-5e4e-937b-b5788186a5ca_ccee034c-8b6c-40d6-ac36-4c70c4623efa aged cheese  vicquelin-espaces-verts_fra697272-00101   kg
      6 ebb8475e-ff57-5e4e-937b-b5788186a5ca_ccee034c-8b6c-40d6-ac36-4c70c4623efa      cheese   bst-procontrol-gmbh_00000005104947-001   kg
      7 2f7b77a7-1556-5c1b-b0aa-c4534ddc8885_38d493e9-6feb-4c66-86eb-2253ef8ee54d       cream           leider-gmbh_00000005064318-001   kg
      8 2f7b77a7-1556-5c1b-b0aa-c4534ddc8885_38d493e9-6feb-4c66-86eb-2253ef8ee54d      rubber             cheries-baqu_neu316541-00101   kg
      9                                                                      <NA>       apple       ca-coity-trg-aua-gmbh_00000384-001 <NA>

# emissions_profile_products hasn't changed

    Code
      as.data.frame(data)
    Output
        co2_footprint    tilt_sector tilt_subsector unit isic_4digit                                                activity_uuid_product_uuid                       ei_activity_name
      1    175.615478       Industry          Other unit        2560 0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0-4cce-93b4-0745344da5fa       cookstove production or electric
      2     58.120002       Industry          Other unit        2560 be06d25c-73dc-55fb-965b-0f300453e380_98b48ff2-2200-4b08-9dec-9c7c0e3585bc              microwave oven production
      3      4.949118 Steel & Metals          Steel   kg        2870 977d997e-c257-5033-ba39-d0edeeef4ba2_0ace02fa-eca5-482d-a829-c18e46a52db4       market for steel, chromium steel
      4     12.468865    Agriculture    Agriculture   kg        1780 ebb8475e-ff57-5e4e-937b-b5788186a5ca_ccee034c-8b6c-40d6-ac36-4c70c4623efa cheese production, soft, from cow milk
      5      2.072349       Industry          Other   kg        2679 2f7b77a7-1556-5c1b-b0aa-c4534ddc8885_38d493e9-6feb-4c66-86eb-2253ef8ee54d  market for seal, natural rubber based

# emissions_profile_upstream_products hasn't changed

    Code
      as.data.frame(data)
    Output
         input_co2_footprint input_tilt_sector input_tilt_subsector    input_unit input_isic_4digit                                     input_activity_uuid_product_uuid                                                activity_uuid_product_uuid
      1         7.072358e+00          Inudstry                Other            kg              2560 5de8c337-dea9-5c1f-9d90-002de27188be_8911bd8c-a96f-4440-9f8e-a7dacf5 0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0-4cce-93b4-0745344da5fa
      2         3.991892e+01          Inudstry                Other           kwh              2560 1aeb18b9-8355-560f-82aa-543c771c4d61_a0e53510-b90b-43ba-80cc-7600f5d 0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0-4cce-93b4-0745344da5fa
      3         5.118673e-01          Inudstry                Other            kg              2560    22704506-7707-5ae7-990d-ebf01ac04fb5_50c41012-3b00-429d-ace3-40d0 0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0-4cce-93b4-0745344da5fa
      4         1.235611e+00          Inudstry                Other            kg              2560 92078219-1ed3-5215-9f70-931cdefad520_5c21b18e-e32d-4c76-8d16-2238632 0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0-4cce-93b4-0745344da5fa
      5         2.124534e+01          Inudstry                Other           kwh              2560   9d483329-b09a-5513-b1bc-722cb211e928_bd4dca-497e-bdd9-fcd343012087 0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0-4cce-93b4-0745344da5fa
      6         1.240000e-09          Inudstry                Other            kg              2560   8709b463-732e-592e-9b88-999ed17af48f_6b6b3a15-e0-baea-cda98afc61c2 0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0-4cce-93b4-0745344da5fa
      7         7.000000e-09          Inudstry                Other            kg              2560    d44e7db1-4dda-51ed2929a8f1a2_32e60fbc-4778-470c-9653-feb859a3418f 0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0-4cce-93b4-0745344da5fa
      8         1.036423e+00          Inudstry                Other            kg              2560    7c7718bb-2372-5d04-a7ac-1ae5b12b05e3_61396bcb-bf35-411a-a6a6-85e8 0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0-4cce-93b4-0745344da5fa
      9         1.120764e+00          Inudstry                Other            kg              2560       f08f52c5-559-92f7-ed216a32eed2_1b30b018-ac39-41f4-a9e0-92057ee be06d25c-73dc-55fb-965b-0f300453e380_98b48ff2-2200-4b08-9dec-9c7c0e3585bc
      10        3.514822e+00          Inudstry                Other            kg              2560          c5f28517-0c26-5746-9afe-3f3a48bfc71c_85a9dda1a-105ab3269262 be06d25c-73dc-55fb-965b-0f300453e380_98b48ff2-2200-4b08-9dec-9c7c0e3585bc
      11        5.690000e-04          Inudstry                Other            kg              2560       6737f21a-545-d3e724540ab7_66c93e71-f32b-4591-901c-55395db5c132 be06d25c-73dc-55fb-965b-0f300453e380_98b48ff2-2200-4b08-9dec-9c7c0e3585bc
      12        1.155505e-01          Inudstry                Other           kwh              2560    582707f4-f961-5779-b1d9-507bdf5624ef_a9007f10-7e39-4d50-8f4a-d6d0 be06d25c-73dc-55fb-965b-0f300453e380_98b48ff2-2200-4b08-9dec-9c7c0e3585bc
      13        5.391936e-02          Inudstry                Other            kg              2560          04bc1d7b-4aeb-57ea-b217-9d70048-5f1b-461d-a223-f08025ec51d6 be06d25c-73dc-55fb-965b-0f300453e380_98b48ff2-2200-4b08-9dec-9c7c0e3585bc
      14        4.427605e+00          Inudstry                Other            kg              2560         2532d5f6-7cec-5b3d-8b4f-9d19d5fce0c2_d47a4435-308911eed2698c be06d25c-73dc-55fb-965b-0f300453e380_98b48ff2-2200-4b08-9dec-9c7c0e3585bc
      15        6.001636e-01    Steel & Metals                Steel           kwh              2870   1a092e74-9095-5393-89f6-6954fb3ed34b_a97e39-4d50-8f4a-d6d03ce3d673 977d997e-c257-5033-ba39-d0edeeef4ba2_0ace02fa-eca5-482d-a829-c18e46a52db4
      16        4.304207e+00    Steel & Metals                Steel            kg              2870            e9afeb6-e0ac327258e0_18eadf40-089b-441a-b868-5d07e9449992 977d997e-c257-5033-ba39-d0edeeef4ba2_0ace02fa-eca5-482d-a829-c18e46a52db4
      17        9.830356e-03    Steel & Metals                Steel metric ton*km              2870            f3aeaa91-d091-57d6-8e88-632e7735b471_a99b6ce9-9c21427d045 977d997e-c257-5033-ba39-d0edeeef4ba2_0ace02fa-eca5-482d-a829-c18e46a52db4
      18        1.024621e-03    Steel & Metals                Steel metric ton*km              2870      088c0a08-55f2-529d-8077-309d5228c5e1_1c5d51e7-9762-5fbb-b707-03 977d997e-c257-5033-ba39-d0edeeef4ba2_0ace02fa-eca5-482d-a829-c18e46a52db4
      19        3.076822e-02    Steel & Metals                Steel metric ton*km              2870           aaacb824-d084b1a7ed0aee_1d32b849-121f-4d23-853c-fa2bf55c42 977d997e-c257-5033-ba39-d0edeeef4ba2_0ace02fa-eca5-482d-a829-c18e46a52db4
      20        3.123531e-03    Steel & Metals                Steel metric ton*km              2870              3d83e6ad-da6e-52cd-b5d5-764749b27b0d-f0ec-42d1-9ec1-f85 977d997e-c257-5033-ba39-d0edeeef4ba2_0ace02fa-eca5-482d-a829-c18e46a52db4
      21       -3.350000e-06 Bioenergy & Waste                Other            kg              1780                   dd836037-c3-8791-29cfb2d98c17_2bf7e6c9-e68a9724d81 ebb8475e-ff57-5e4e-937b-b5788186a5ca_ccee034c-8b6c-40d6-ac36-4c70c4623efa
      22       -1.136353e-03 Bioenergy & Waste                Other            kg              1780               b43e277b-fbbc-59ef-b69c-566cc02d3ee4_a9007f6d03ce3d673 ebb8475e-ff57-5e4e-937b-b5788186a5ca_ccee034c-8b6c-40d6-ac36-4c70c4623efa
      23        2.601609e-01 Bioenergy & Waste                Other           kwh              1780               f1b81a2c-26ad-56f4-8120-d7affa5ab053_7933f397-3db0ae03 ebb8475e-ff57-5e4e-937b-b5788186a5ca_ccee034c-8b6c-40d6-ac36-4c70c4623efa
      24        2.843441e-01 Bioenergy & Waste                Other            kg              1780                        d1747a2e--0bb44d158a0b_dae141a8-7daa-4f03-a64 ebb8475e-ff57-5e4e-937b-b5788186a5ca_ccee034c-8b6c-40d6-ac36-4c70c4623efa
      25        1.099965e+01 Bioenergy & Waste                Other            kg              1780              c0e9d55b-7a17-5a0a-b67e-517f813c446ed-a120-cc7d35ddac10 ebb8475e-ff57-5e4e-937b-b5788186a5ca_ccee034c-8b6c-40d6-ac36-4c70c4623efa
      26        1.006155e-03 Bioenergy & Waste                Other            kg              1780                       f0d2c218-2b61-55e4-991f-cccc7c168e37_a235b2ff- ebb8475e-ff57-5e4e-937b-b5788186a5ca_ccee034c-8b6c-40d6-ac36-4c70c4623efa
      27        3.243020e-02 Bioenergy & Waste                Other            m3              1780               86f30e6d-d629-52ed-aeda-68a82ba-485c-a800-b89efdcb0491 ebb8475e-ff57-5e4e-937b-b5788186a5ca_ccee034c-8b6c-40d6-ac36-4c70c4623efa
      28        1.199468e-01          Inudstry                Other            kg              2679          e7efa084-9c9c-519c-9c88-a0e43926ef95_61627325--1a9f1d19521f 2f7b77a7-1556-5c1b-b0aa-c4534ddc8885_38d493e9-6feb-4c66-86eb-2253ef8ee54d
      29        1.868036e+00          Inudstry                Other            kg              2679        d9b1a425-7453-562f-802f-e78677f5bd00_a9007f10-7a-d6d03ce3d673 2f7b77a7-1556-5c1b-b0aa-c4534ddc8885_38d493e9-6feb-4c66-86eb-2253ef8ee54d
      30        4.545829e-03          Inudstry                Other metric ton*km              2679      4283166a-347b-5eef-9ab1-fcea0c339bc-f0f3-410e-8bbb-b5cb3e994313 2f7b77a7-1556-5c1b-b0aa-c4534ddc8885_38d493e9-6feb-4c66-86eb-2253ef8ee54d
      31        2.200131e-02          Inudstry                Other metric ton*km              2679            4550d429-b28d-b26c51_66c93e71-f32b-4591-901c-55395db5c132 2f7b77a7-1556-5c1b-b0aa-c4534ddc8885_38d493e9-6feb-4c66-86eb-2253ef8ee54d
      32        5.292432e-02          Inudstry                Other metric ton*km              2679                  6501c38f-4c03-5bda-bf8c-ffe4-4915-a896-9996a014c410 2f7b77a7-1556-5c1b-b0aa-c4534ddc8885_38d493e9-6feb-4c66-86eb-2253ef8ee54d
      33        4.894748e-03          Inudstry                Other metric ton*km              2679              4ba8cd24-2ebb-5c20-86ec-74e10029f21f_f5707bdf-f7e2-479b 2f7b77a7-1556-5c1b-b0aa-c4534ddc8885_38d493e9-6feb-4c66-86eb-2253ef8ee54d

# sector_profile_any_scenarios hasn't changed

    Code
      as.data.frame(data)
    Output
                                     scenario region              sector                                  subsector year    value    reductions type
      1                              1.5c rps  world               power                                       <NA> 2030  5359.18  5.800000e-01  ipr
      2                              1.5c rps  world               power                                       <NA> 2050  -807.13  1.060000e+00  ipr
      3                              1.5c rps  world           buildings                                       <NA> 2030  2454.21  1.800000e-01  ipr
      4                              1.5c rps  world           buildings                                       <NA> 2050    61.30  9.800000e-01  ipr
      5                              1.5c rps  world            industry                             iron and steel 2030  1871.82  2.300000e-01  ipr
      6                              1.5c rps  world            industry                             iron and steel 2050    88.29  9.600000e-01  ipr
      7                              1.5c rps  world            industry                      non-metallic minerals 2030  2641.47  1.300000e-01  ipr
      8                              1.5c rps  world            industry                      non-metallic minerals 2050   591.81  8.000000e-01  ipr
      9                              1.5c rps  world            industry                                  chemicals 2030  1217.95  1.200000e-01  ipr
      10                             1.5c rps  world            industry                                  chemicals 2050   101.76  9.300000e-01  ipr
      11                             1.5c rps  world            industry                             other industry 2030  1747.64  9.000000e-02  ipr
      12                             1.5c rps  world            industry                             other industry 2050    92.00  9.500000e-01  ipr
      13                             1.5c rps  world           transport                                       cars 2030  2341.53  1.500000e-01  ipr
      14                             1.5c rps  world           transport                                       cars 2050    24.95  9.900000e-01  ipr
      15                             1.5c rps  world           transport                                     trucks 2030  2087.33 -1.400000e-01  ipr
      16                             1.5c rps  world           transport                                     trucks 2050    33.09  9.800000e-01  ipr
      17                             1.5c rps  world           transport                                   aviation 2030  1211.47 -8.500000e-01  ipr
      18                             1.5c rps  world           transport                                   aviation 2050   362.59  4.500000e-01  ipr
      19                             1.5c rps  world           transport                                   shipping 2030  1042.77 -2.900000e-01  ipr
      20                             1.5c rps  world           transport                                   shipping 2050   223.51  7.200000e-01  ipr
      21                             1.5c rps  world           transport                            other transport 2030   993.91  2.200000e-01  ipr
      22                             1.5c rps  world           transport                            other transport 2050    96.94  9.200000e-01  ipr
      23                             1.5c rps  world        other energy                                       <NA> 2030  2742.62  6.000000e-02  ipr
      24                             1.5c rps  world        other energy                                       <NA> 2050   699.21  7.600000e-01  ipr
      25                             1.5c rps  world               total                                     energy 2030 25711.90  2.600000e-01  ipr
      26                             1.5c rps  world               total                                     energy 2050  1568.33  9.500000e-01  ipr
      27                             1.5c rps  world                <NA>                                   land use 2030  2250.00  6.200000e-01  ipr
      28                             1.5c rps  world                <NA>                                   land use 2050 -1870.00  1.320000e+00  ipr
      29             stated policies scenario  world               total biofuels production and direct air capture 2020     0.81  0.000000e+00  weo
      30           announced pledges scenario  world               total biofuels production and direct air capture 2020     0.81  0.000000e+00  weo
      31  net zero emissions by 2050 scenario  world               total biofuels production and direct air capture 2020     0.81  0.000000e+00  weo
      32             stated policies scenario  world               total biofuels production and direct air capture 2030     8.74 -9.790123e+00  weo
      33             stated policies scenario  world                coal                        total energy supply 2020 14335.20  0.000000e+00  weo
      34             stated policies scenario  world                coal                        total energy supply 2030 13695.00  4.465930e-02  weo
      35             stated policies scenario  world                coal                        total energy supply 2040 11553.40  1.940538e-01  weo
      36             stated policies scenario  world                coal                        total energy supply 2050  9863.04  3.119705e-01  weo
      37             stated policies scenario  world                 oil                        total energy supply 2020 10193.70  0.000000e+00  weo
      38             stated policies scenario  world                 oil                        total energy supply 2030 11411.50 -1.194659e-01  weo
      39             stated policies scenario  world                 oil                        total energy supply 2040 11247.90 -1.034168e-01  weo
      40             stated policies scenario  world                 oil                        total energy supply 2050 11094.20 -8.833888e-02  weo
      41             stated policies scenario  world         natural gas                        total energy supply 2020  7161.51  0.000000e+00  weo
      42             stated policies scenario  world         natural gas                        total energy supply 2030  7773.69 -8.548197e-02  weo
      43             stated policies scenario  world         natural gas                        total energy supply 2040  7674.74 -7.166505e-02  weo
      44             stated policies scenario  world         natural gas                        total energy supply 2050  7628.53 -6.521250e-02  weo
      45             stated policies scenario  world bioenergy and waste                        total energy supply 2020   213.41  0.000000e+00  weo
      46             stated policies scenario  world bioenergy and waste                        total energy supply 2030   254.37 -1.919310e-01  weo
      47             stated policies scenario  world bioenergy and waste                        total energy supply 2040   323.65 -5.165644e-01  weo
      48             stated policies scenario  world bioenergy and waste                        total energy supply 2050   360.38 -6.886744e-01  weo
      49           announced pledges scenario  world               total biofuels production and direct air capture 2030    49.97 -6.069136e+01  weo
      50  net zero emissions by 2050 scenario  world               total biofuels production and direct air capture 2030   155.87 -1.914321e+02  weo
      51             stated policies scenario  world               total biofuels production and direct air capture 2040    27.79 -3.330864e+01  weo
      52           announced pledges scenario  world               total biofuels production and direct air capture 2040   163.53 -2.008889e+02  weo
      53  net zero emissions by 2050 scenario  world               total biofuels production and direct air capture 2040   530.30 -6.536914e+02  weo
      54             stated policies scenario  world               total biofuels production and direct air capture 2050    59.28 -7.218519e+01  weo
      55           announced pledges scenario  world               total biofuels production and direct air capture 2050   405.96 -5.001852e+02  weo
      56  net zero emissions by 2050 scenario  world               total biofuels production and direct air capture 2050   786.85 -9.704198e+02  weo
      57             stated policies scenario  world                coal                        power sector inputs 2020  9750.40  0.000000e+00  weo
      58             stated policies scenario  world                coal                        power sector inputs 2030  9127.98  6.383533e-02  weo
      59             stated policies scenario  world                coal                        power sector inputs 2040  7281.79  2.531804e-01  weo
      60             stated policies scenario  world                coal                        power sector inputs 2050  5938.44  3.909542e-01  weo
      61             stated policies scenario  world                 oil                        power sector inputs 2020   557.30  0.000000e+00  weo
      62             stated policies scenario  world                 oil                        power sector inputs 2030   371.56  3.332855e-01  weo
      63             stated policies scenario  world                 oil                        power sector inputs 2040   308.52  4.464023e-01  weo
      64             stated policies scenario  world                 oil                        power sector inputs 2050   260.29  5.329446e-01  weo
      65             stated policies scenario  world         natural gas                        power sector inputs 2020  3095.24  0.000000e+00  weo
      66             stated policies scenario  world         natural gas                        power sector inputs 2030  3104.66 -3.043383e-03  weo
      67             stated policies scenario  world         natural gas                        power sector inputs 2040  2863.26  7.494734e-02  weo
      68             stated policies scenario  world         natural gas                        power sector inputs 2050  2842.10  8.178364e-02  weo
      69             stated policies scenario  world bioenergy and waste                        power sector inputs 2020    99.10  0.000000e+00  weo
      70             stated policies scenario  world bioenergy and waste                        power sector inputs 2030   154.44 -5.584258e-01  weo
      71             stated policies scenario  world bioenergy and waste                        power sector inputs 2040   222.77 -1.247931e+00  weo
      72             stated policies scenario  world bioenergy and waste                        power sector inputs 2050   266.91 -1.693340e+00  weo
      73             stated policies scenario  world               total                                  buildings 2020  2850.65  0.000000e+00  weo
      74           announced pledges scenario  world               total                                  buildings 2020  2850.65  0.000000e+00  weo
      75  net zero emissions by 2050 scenario  world               total                                  buildings 2020  2850.65  0.000000e+00  weo
      76             stated policies scenario  world               total                                  buildings 2030  2680.33  5.974778e-02  weo
      77           announced pledges scenario  world               total                                  buildings 2030  2266.82  2.048059e-01  weo
      78  net zero emissions by 2050 scenario  world               total                                  buildings 2030  1631.91  4.275306e-01  weo
      79             stated policies scenario  world               total                                  buildings 2040  2446.36  1.418238e-01  weo
      80           announced pledges scenario  world               total                                  buildings 2040  1434.38  4.968235e-01  weo
      81             stated policies scenario  world                coal                    total final consumption 2020  4474.28  0.000000e+00  weo
      82             stated policies scenario  world                coal                    total final consumption 2030  4458.24  3.584934e-03  weo
      83             stated policies scenario  world                coal                    total final consumption 2040  4170.37  6.792378e-02  weo
      84             stated policies scenario  world                coal                    total final consumption 2050  3829.98  1.440008e-01  weo
      85             stated policies scenario  world                 oil                    total final consumption 2020  9080.06  0.000000e+00  weo
      86             stated policies scenario  world                 oil                    total final consumption 2030 10455.50 -1.514792e-01  weo
      87             stated policies scenario  world                 oil                    total final consumption 2040 10388.40 -1.440894e-01  weo
      88             stated policies scenario  world                 oil                    total final consumption 2050 10331.10 -1.377788e-01  weo
      89             stated policies scenario  world         natural gas                    total final consumption 2020  3320.85  0.000000e+00  weo
      90             stated policies scenario  world         natural gas                    total final consumption 2030  3800.01 -1.442884e-01  weo
      91             stated policies scenario  world         natural gas                    total final consumption 2040  3929.05 -1.831459e-01  weo
      92             stated policies scenario  world         natural gas                    total final consumption 2050  3904.12 -1.756388e-01  weo
      93             stated policies scenario  world bioenergy and waste                    total final consumption 2020   113.50  0.000000e+00  weo
      94             stated policies scenario  world bioenergy and waste                    total final consumption 2030   100.04  1.185903e-01  weo
      95             stated policies scenario  world bioenergy and waste                    total final consumption 2040   101.00  1.101322e-01  weo
      96             stated policies scenario  world bioenergy and waste                    total final consumption 2050    93.65  1.748899e-01  weo
      97  net zero emissions by 2050 scenario  world               total                                  buildings 2040   474.58  8.335187e-01  weo
      98             stated policies scenario  world               total                                  buildings 2050  2293.41  1.954782e-01  weo
      99           announced pledges scenario  world               total                                  buildings 2050  1029.49  6.388578e-01  weo
      100 net zero emissions by 2050 scenario  world               total                                  buildings 2050    55.36  9.805799e-01  weo
      101            stated policies scenario  world               total                                  chemicals 2020  1286.79  0.000000e+00  weo
      102          announced pledges scenario  world               total                                  chemicals 2020  1286.79  0.000000e+00  weo
      103 net zero emissions by 2050 scenario  world               total                                  chemicals 2020  1286.79  0.000000e+00  weo
      104            stated policies scenario  world               total                                  chemicals 2030  1492.19 -1.596220e-01  weo
      105          announced pledges scenario  world               total                                  chemicals 2030  1314.62 -2.162746e-02  weo
      106 net zero emissions by 2050 scenario  world               total                                  chemicals 2030  1137.24  1.162194e-01  weo
      107            stated policies scenario  world               total                                  chemicals 2040  1492.00 -1.594744e-01  weo
      108          announced pledges scenario  world               total                                  chemicals 2040   925.04  2.811259e-01  weo
      109 net zero emissions by 2050 scenario  world               total                                  chemicals 2040   545.83  5.758205e-01  weo
      110            stated policies scenario  world               total                                  chemicals 2050  1429.13 -1.106163e-01  weo
      111          announced pledges scenario  world               total                                  chemicals 2050   547.97  5.741574e-01  weo
      112 net zero emissions by 2050 scenario  world               total                                  chemicals 2050    38.48  9.700961e-01  weo
      113            stated policies scenario  world               total                                   industry 2020  9132.22  0.000000e+00  weo
      114          announced pledges scenario  world               total                                   industry 2020  9132.22  0.000000e+00  weo
      115 net zero emissions by 2050 scenario  world               total                                   industry 2020  9132.22  0.000000e+00  weo
      116            stated policies scenario  world               total                                   industry 2030 10036.50 -9.902083e-02  weo
      117          announced pledges scenario  world               total                                   industry 2030  8569.29  6.164219e-02  weo
      118 net zero emissions by 2050 scenario  world               total                                   industry 2030  7167.71  2.151186e-01  weo
      119            stated policies scenario  world               total                                   industry 2040 10060.70 -1.016708e-01  weo
      120          announced pledges scenario  world               total                                   industry 2040  6233.70  3.173949e-01  weo
      121 net zero emissions by 2050 scenario  world               total                                   industry 2040  3246.05  6.445497e-01  weo
      122            stated policies scenario  world               total                                   industry 2050  9669.44 -5.882688e-02  weo
      123          announced pledges scenario  world               total                                   industry 2050  3946.03  5.679002e-01  weo
      124 net zero emissions by 2050 scenario  world               total                                   industry 2050   395.78  9.566611e-01  weo
      125            stated policies scenario  world               total                             iron and steel 2020  2724.26  0.000000e+00  weo
      126          announced pledges scenario  world               total                             iron and steel 2020  2724.26  0.000000e+00  weo
      127 net zero emissions by 2050 scenario  world               total                             iron and steel 2020  2724.26  0.000000e+00  weo
      128            stated policies scenario  world               total                             iron and steel 2030  2929.00 -7.515435e-02  weo
      129          announced pledges scenario  world               total                             iron and steel 2030  2511.52  7.809093e-02  weo
      130 net zero emissions by 2050 scenario  world               total                             iron and steel 2030  2090.54  2.326210e-01  weo
      131            stated policies scenario  world               total                             iron and steel 2040  2797.70 -2.695778e-02  weo
      132          announced pledges scenario  world               total                             iron and steel 2040  1807.75  3.364253e-01  weo
      133 net zero emissions by 2050 scenario  world               total                             iron and steel 2040   965.05  6.457570e-01  weo
      134            stated policies scenario  world               total                             iron and steel 2050  2652.97  2.616857e-02  weo
      135          announced pledges scenario  world               total                             iron and steel 2050  1119.84  5.889379e-01  weo
      136 net zero emissions by 2050 scenario  world               total                             iron and steel 2050   176.88  9.350723e-01  weo
      137            stated policies scenario  world               total              non-metallic minerals: cement 2020  2458.33  0.000000e+00  weo
      138          announced pledges scenario  world               total              non-metallic minerals: cement 2020  2458.33  0.000000e+00  weo
      139 net zero emissions by 2050 scenario  world               total              non-metallic minerals: cement 2020  2458.33  0.000000e+00  weo
      140            stated policies scenario  world               total              non-metallic minerals: cement 2030  2648.17 -7.722316e-02  weo
      141          announced pledges scenario  world               total              non-metallic minerals: cement 2030  2328.63  5.275939e-02  weo
      142 net zero emissions by 2050 scenario  world               total              non-metallic minerals: cement 2030  1910.46  2.228627e-01  weo
      143            stated policies scenario  world               total              non-metallic minerals: cement 2040  2699.14 -9.795674e-02  weo
      144          announced pledges scenario  world               total              non-metallic minerals: cement 2040  1758.41  2.847136e-01  weo
      145 net zero emissions by 2050 scenario  world               total              non-metallic minerals: cement 2040   869.02  6.464999e-01  weo
      146            stated policies scenario  world               total              non-metallic minerals: cement 2050  2585.30 -5.164888e-02  weo
      147          announced pledges scenario  world               total              non-metallic minerals: cement 2050  1084.10  5.590096e-01  weo
      148 net zero emissions by 2050 scenario  world               total              non-metallic minerals: cement 2050    75.50  9.692881e-01  weo
      149            stated policies scenario  world               total                        other energy sector 2020  1487.18  0.000000e+00  weo
      150          announced pledges scenario  world               total                        other energy sector 2020  1487.18  0.000000e+00  weo
      151 net zero emissions by 2050 scenario  world               total                        other energy sector 2020  1487.18  0.000000e+00  weo
      152            stated policies scenario  world               total                        other energy sector 2030  1698.37 -1.420070e-01  weo
      153          announced pledges scenario  world               total                        other energy sector 2030  1334.09  1.029398e-01  weo
      154 net zero emissions by 2050 scenario  world               total                        other energy sector 2030   965.62  3.507040e-01  weo
      155            stated policies scenario  world               total                        other energy sector 2040  1695.49 -1.400705e-01  weo
      156          announced pledges scenario  world               total                        other energy sector 2040   730.29  5.089431e-01  weo
      157          announced pledges scenario  world                coal                        total energy supply 2020 14335.20  0.000000e+00  weo
      158          announced pledges scenario  world                coal                        total energy supply 2030 11881.30  1.711800e-01  weo
      159          announced pledges scenario  world                coal                        total energy supply 2040  6594.46  5.399813e-01  weo
      160          announced pledges scenario  world                coal                        total energy supply 2050  2973.15  7.925979e-01  weo
      161          announced pledges scenario  world                 oil                        total energy supply 2020 10193.70  0.000000e+00  weo
      162          announced pledges scenario  world                 oil                        total energy supply 2030 10092.60  9.917890e-03  weo
      163          announced pledges scenario  world                 oil                        total energy supply 2040  7169.41  2.966823e-01  weo
      164          announced pledges scenario  world                 oil                        total energy supply 2050  5077.77  5.018717e-01  weo
      165          announced pledges scenario  world         natural gas                        total energy supply 2020  7161.51  0.000000e+00  weo
      166          announced pledges scenario  world         natural gas                        total energy supply 2030  6679.86  6.725537e-02  weo
      167          announced pledges scenario  world         natural gas                        total energy supply 2040  4966.95  3.064382e-01  weo
      168          announced pledges scenario  world         natural gas                        total energy supply 2050  3758.47  4.751847e-01  weo
      169          announced pledges scenario  world bioenergy and waste                        total energy supply 2020   213.41  0.000000e+00  weo
      170          announced pledges scenario  world bioenergy and waste                        total energy supply 2030   149.19  3.009231e-01  weo
      171          announced pledges scenario  world bioenergy and waste                        total energy supply 2040  -176.46  1.826859e+00  weo
      172          announced pledges scenario  world bioenergy and waste                        total energy supply 2050  -462.91  3.169111e+00  weo
      173 net zero emissions by 2050 scenario  world               total                        other energy sector 2040   112.33  9.244678e-01  weo
      174            stated policies scenario  world               total                        other energy sector 2050  1659.10 -1.156013e-01  weo
      175          announced pledges scenario  world               total                        other energy sector 2050   191.20  8.714345e-01  weo
      176 net zero emissions by 2050 scenario  world               total                        other energy sector 2050  -266.45  1.179165e+00  weo
      177            stated policies scenario  world               total                        power sector inputs 2020 13502.00  0.000000e+00  weo
      178          announced pledges scenario  world               total                        power sector inputs 2020 13502.00  0.000000e+00  weo
      179 net zero emissions by 2050 scenario  world               total                        power sector inputs 2020 13502.00  0.000000e+00  weo
      180            stated policies scenario  world               total                        power sector inputs 2030 12758.60  5.505851e-02  weo
      181          announced pledges scenario  world                coal                        power sector inputs 2020  9750.40  0.000000e+00  weo
      182          announced pledges scenario  world                coal                        power sector inputs 2030  8163.43  1.627595e-01  weo
      183          announced pledges scenario  world                coal                        power sector inputs 2040  4291.95  5.598181e-01  weo
      184          announced pledges scenario  world                coal                        power sector inputs 2050  1712.59  8.243569e-01  weo
      185          announced pledges scenario  world                 oil                        power sector inputs 2020   557.30  0.000000e+00  weo
      186          announced pledges scenario  world                 oil                        power sector inputs 2030   322.08  4.220707e-01  weo
      187          announced pledges scenario  world                 oil                        power sector inputs 2040   230.35  5.866679e-01  weo
      188          announced pledges scenario  world                 oil                        power sector inputs 2050   155.86  7.203302e-01  weo
      189          announced pledges scenario  world         natural gas                        power sector inputs 2020  3095.24  0.000000e+00  weo
      190          announced pledges scenario  world         natural gas                        power sector inputs 2030  2759.41  1.084989e-01  weo
      191          announced pledges scenario  world         natural gas                        power sector inputs 2040  2021.73  3.468261e-01  weo
      192          announced pledges scenario  world         natural gas                        power sector inputs 2050  1597.93  4.837460e-01  weo
      193          announced pledges scenario  world bioenergy and waste                        power sector inputs 2020    99.10  0.000000e+00  weo
      194          announced pledges scenario  world bioenergy and waste                        power sector inputs 2030    84.93  1.429869e-01  weo
      195          announced pledges scenario  world bioenergy and waste                        power sector inputs 2040  -154.91  2.563169e+00  weo
      196          announced pledges scenario  world bioenergy and waste                        power sector inputs 2050  -328.71  4.316953e+00  weo
      197          announced pledges scenario  world               total                        power sector inputs 2030 11329.90  1.608725e-01  weo
      198 net zero emissions by 2050 scenario  world               total                        power sector inputs 2030  7076.47  4.758947e-01  weo
      199            stated policies scenario  world               total                        power sector inputs 2040 10676.30  2.092801e-01  weo
      200          announced pledges scenario  world               total                        power sector inputs 2040  6389.13  5.268012e-01  weo
      201 net zero emissions by 2050 scenario  world               total                        power sector inputs 2040  -188.61  1.013969e+00  weo
      202            stated policies scenario  world               total                        power sector inputs 2050  9307.74  3.106399e-01  weo
      203          announced pledges scenario  world               total                        power sector inputs 2050  3137.67  7.676144e-01  weo
      204 net zero emissions by 2050 scenario  world               total                        power sector inputs 2050  -350.78  1.025980e+00  weo
      205          announced pledges scenario  world                coal                    total final consumption 2020  4474.28  0.000000e+00  weo
      206          announced pledges scenario  world                coal                    total final consumption 2030  3621.14  1.906765e-01  weo
      207          announced pledges scenario  world                coal                    total final consumption 2040  2239.15  4.995508e-01  weo
      208          announced pledges scenario  world                coal                    total final consumption 2050  1238.78  7.231331e-01  weo
      209          announced pledges scenario  world                 oil                    total final consumption 2020  9080.06  0.000000e+00  weo
      210          announced pledges scenario  world                 oil                    total final consumption 2030  9302.23 -2.446790e-02  weo
      211          announced pledges scenario  world                 oil                    total final consumption 2040  6669.63  2.654641e-01  weo
      212          announced pledges scenario  world                 oil                    total final consumption 2050  4754.88  4.763383e-01  weo
      213          announced pledges scenario  world         natural gas                    total final consumption 2020  3320.85  0.000000e+00  weo
      214          announced pledges scenario  world         natural gas                    total final consumption 2030  3225.17  2.881190e-02  weo
      215          announced pledges scenario  world         natural gas                    total final consumption 2040  2464.88  2.577563e-01  weo
      216          announced pledges scenario  world         natural gas                    total final consumption 2050  1803.36  4.569583e-01  weo
      217          announced pledges scenario  world bioenergy and waste                    total final consumption 2020   113.50  0.000000e+00  weo
      218          announced pledges scenario  world bioenergy and waste                    total final consumption 2030    64.43  4.323348e-01  weo
      219          announced pledges scenario  world bioenergy and waste                    total final consumption 2040   -21.03  1.185286e+00  weo
      220          announced pledges scenario  world bioenergy and waste                    total final consumption 2050  -124.93  2.100705e+00  weo
      221            stated policies scenario  world               total                                residential 2020  1982.94  0.000000e+00  weo
      222          announced pledges scenario  world               total                                residential 2020  1982.94  0.000000e+00  weo
      223 net zero emissions by 2050 scenario  world               total                                residential 2020  1982.94  0.000000e+00  weo
      224            stated policies scenario  world               total                                residential 2030  1746.60  1.191867e-01  weo
      225          announced pledges scenario  world               total                                residential 2030  1558.57  2.140105e-01  weo
      226 net zero emissions by 2050 scenario  world               total                                residential 2030  1197.40  3.961492e-01  weo
      227            stated policies scenario  world               total                                residential 2040  1527.82  2.295178e-01  weo
      228          announced pledges scenario  world               total                                residential 2040  1002.23  4.945737e-01  weo
      229 net zero emissions by 2050 scenario  world               total                                residential 2040   368.88  8.139732e-01  weo
      230            stated policies scenario  world               total                                residential 2050  1415.08  2.863728e-01  weo
      231          announced pledges scenario  world               total                                residential 2050   747.73  6.229185e-01  weo
      232 net zero emissions by 2050 scenario  world               total                                residential 2050    54.61  9.724601e-01  weo
      233            stated policies scenario  world               total                                       road 2020  5484.78  0.000000e+00  weo
      234          announced pledges scenario  world               total                                       road 2020  5484.78  0.000000e+00  weo
      235 net zero emissions by 2050 scenario  world               total                                       road 2020  5484.78  0.000000e+00  weo
      236            stated policies scenario  world               total                                       road 2030  6064.52 -1.056998e-01  weo
      237          announced pledges scenario  world               total                                       road 2030  5458.55  4.782325e-03  weo
      238 net zero emissions by 2050 scenario  world               total                                       road 2030  3987.84  2.729262e-01  weo
      239            stated policies scenario  world               total                                       road 2040  5925.10 -8.028034e-02  weo
      240          announced pledges scenario  world               total                                       road 2040  3772.68  3.121547e-01  weo
      241 net zero emissions by 2050 scenario  world               total                                       road 2040  1369.97  7.502233e-01  weo
      242            stated policies scenario  world               total                                       road 2050  5666.90 -3.320461e-02  weo
      243          announced pledges scenario  world               total                                       road 2050  2508.61  5.426234e-01  weo
      244 net zero emissions by 2050 scenario  world               total                                       road 2050   195.03  9.644416e-01  weo
      245            stated policies scenario  world               total                     road heavy-duty trucks 2020  1688.10  0.000000e+00  weo
      246          announced pledges scenario  world               total                     road heavy-duty trucks 2020  1688.10  0.000000e+00  weo
      247 net zero emissions by 2050 scenario  world               total                     road heavy-duty trucks 2020  1688.10  0.000000e+00  weo
      248            stated policies scenario  world               total                     road heavy-duty trucks 2030  2069.79 -2.261063e-01  weo
      249          announced pledges scenario  world               total                     road heavy-duty trucks 2030  1909.47 -1.311356e-01  weo
      250 net zero emissions by 2050 scenario  world               total                     road heavy-duty trucks 2030  1574.26  6.743676e-02  weo
      251            stated policies scenario  world               total                     road heavy-duty trucks 2040  2274.16 -3.471714e-01  weo
      252          announced pledges scenario  world               total                     road heavy-duty trucks 2040  1548.75  8.254843e-02  weo
      253 net zero emissions by 2050 scenario  world               total                     road heavy-duty trucks 2040   745.58  5.583319e-01  weo
      254            stated policies scenario  world               total                     road heavy-duty trucks 2050  2435.04 -4.424738e-01  weo
      255          announced pledges scenario  world               total                     road heavy-duty trucks 2050  1137.45  3.261951e-01  weo
      256 net zero emissions by 2050 scenario  world               total                     road heavy-duty trucks 2050   136.12  9.193650e-01  weo
      257            stated policies scenario  world               total          road passenger light duty vehicle 2020  2803.05  0.000000e+00  weo
      258          announced pledges scenario  world               total          road passenger light duty vehicle 2020  2803.05  0.000000e+00  weo
      259 net zero emissions by 2050 scenario  world               total          road passenger light duty vehicle 2020  2803.05  0.000000e+00  weo
      260            stated policies scenario  world               total          road passenger light duty vehicle 2030  2961.60 -5.656339e-02  weo
      261          announced pledges scenario  world               total          road passenger light duty vehicle 2030  2588.60  7.650595e-02  weo
      262 net zero emissions by 2050 scenario  world               total          road passenger light duty vehicle 2030  1690.99  3.967321e-01  weo
      263            stated policies scenario  world               total          road passenger light duty vehicle 2040  2760.55  1.516206e-02  weo
      264          announced pledges scenario  world               total          road passenger light duty vehicle 2040  1597.82  4.299709e-01  weo
      265 net zero emissions by 2050 scenario  world               total          road passenger light duty vehicle 2040   421.66  8.495710e-01  weo
      266            stated policies scenario  world               total          road passenger light duty vehicle 2050  2470.34  1.186957e-01  weo
      267          announced pledges scenario  world               total          road passenger light duty vehicle 2050   996.87  6.443624e-01  weo
      268 net zero emissions by 2050 scenario  world               total          road passenger light duty vehicle 2050    45.34  9.838248e-01  weo
      269            stated policies scenario  world               total                                   services 2020   867.71  0.000000e+00  weo
      270          announced pledges scenario  world               total                                   services 2020   867.71  0.000000e+00  weo
      271 net zero emissions by 2050 scenario  world               total                                   services 2020   867.71  0.000000e+00  weo
      272            stated policies scenario  world               total                                   services 2030   933.73 -7.608533e-02  weo
      273          announced pledges scenario  world               total                                   services 2030   708.25  1.837711e-01  weo
      274 net zero emissions by 2050 scenario  world               total                                   services 2030   434.51  4.992451e-01  weo
      275            stated policies scenario  world               total                                   services 2040   918.54 -5.857948e-02  weo
      276          announced pledges scenario  world               total                                   services 2040   432.15  5.019649e-01  weo
      277 net zero emissions by 2050 scenario  world               total                                   services 2040   105.70  8.781851e-01  weo
      278            stated policies scenario  world               total                                   services 2050   878.33 -1.223911e-02  weo
      279          announced pledges scenario  world               total                                   services 2050   281.77  6.752717e-01  weo
      280 net zero emissions by 2050 scenario  world               total                                   services 2050     0.75  9.991357e-01  weo
      281 net zero emissions by 2050 scenario  world                coal                        total energy supply 2020 14335.20  0.000000e+00  weo
      282 net zero emissions by 2050 scenario  world                coal                        total energy supply 2030  7578.32  4.713488e-01  weo
      283 net zero emissions by 2050 scenario  world                coal                        total energy supply 2040  1140.44  9.204448e-01  weo
      284 net zero emissions by 2050 scenario  world                coal                        total energy supply 2050   114.27  9.920287e-01  weo
      285 net zero emissions by 2050 scenario  world                 oil                        total energy supply 2020 10193.70  0.000000e+00  weo
      286 net zero emissions by 2050 scenario  world                 oil                        total energy supply 2030  7710.44  2.436073e-01  weo
      287 net zero emissions by 2050 scenario  world                 oil                        total energy supply 2040  3029.61  7.027958e-01  weo
      288 net zero emissions by 2050 scenario  world                 oil                        total energy supply 2050   722.15  9.291572e-01  weo
      289 net zero emissions by 2050 scenario  world         natural gas                        total energy supply 2020  7161.51  0.000000e+00  weo
      290 net zero emissions by 2050 scenario  world         natural gas                        total energy supply 2030  5282.33  2.624000e-01  weo
      291 net zero emissions by 2050 scenario  world         natural gas                        total energy supply 2040  1390.91  8.057798e-01  weo
      292 net zero emissions by 2050 scenario  world         natural gas                        total energy supply 2050   404.67  9.434938e-01  weo
      293 net zero emissions by 2050 scenario  world bioenergy and waste                        total energy supply 2020   213.41  0.000000e+00  weo
      294 net zero emissions by 2050 scenario  world bioenergy and waste                        total energy supply 2030    19.34  9.093763e-01  weo
      295 net zero emissions by 2050 scenario  world bioenergy and waste                        total energy supply 2040  -457.68  3.144604e+00  weo
      296 net zero emissions by 2050 scenario  world bioenergy and waste                        total energy supply 2050  -731.46  4.427487e+00  weo
      297            stated policies scenario  world               total      total aviation (domestic and bunkers) 2020   586.31  0.000000e+00  weo
      298          announced pledges scenario  world               total      total aviation (domestic and bunkers) 2020   586.31  0.000000e+00  weo
      299 net zero emissions by 2050 scenario  world               total      total aviation (domestic and bunkers) 2020   586.31  0.000000e+00  weo
      300            stated policies scenario  world               total      total aviation (domestic and bunkers) 2030  1259.49 -1.148164e+00  weo
      301          announced pledges scenario  world               total      total aviation (domestic and bunkers) 2030  1196.89 -1.041394e+00  weo
      302 net zero emissions by 2050 scenario  world               total      total aviation (domestic and bunkers) 2030   884.21 -5.080930e-01  weo
      303            stated policies scenario  world               total      total aviation (domestic and bunkers) 2040  1439.57 -1.455305e+00  weo
      304          announced pledges scenario  world               total      total aviation (domestic and bunkers) 2040  1135.75 -9.371152e-01  weo
      305 net zero emissions by 2050 scenario  world                coal                        power sector inputs 2020  9750.40  0.000000e+00  weo
      306 net zero emissions by 2050 scenario  world                coal                        power sector inputs 2030  4653.48  5.227396e-01  weo
      307 net zero emissions by 2050 scenario  world                coal                        power sector inputs 2040    48.73  9.950023e-01  weo
      308 net zero emissions by 2050 scenario  world                coal                        power sector inputs 2050    26.65  9.972668e-01  weo
      309 net zero emissions by 2050 scenario  world                 oil                        power sector inputs 2020   557.30  0.000000e+00  weo
      310 net zero emissions by 2050 scenario  world                 oil                        power sector inputs 2030   167.39  6.996411e-01  weo
      311 net zero emissions by 2050 scenario  world                 oil                        power sector inputs 2040    17.80  9.680603e-01  weo
      312 net zero emissions by 2050 scenario  world                 oil                        power sector inputs 2050     2.34  9.958012e-01  weo
      313 net zero emissions by 2050 scenario  world         natural gas                        power sector inputs 2020  3095.24  0.000000e+00  weo
      314 net zero emissions by 2050 scenario  world         natural gas                        power sector inputs 2030  2264.18  2.684961e-01  weo
      315 net zero emissions by 2050 scenario  world         natural gas                        power sector inputs 2040    79.99  9.741571e-01  weo
      316 net zero emissions by 2050 scenario  world         natural gas                        power sector inputs 2050    41.69  9.865309e-01  weo
      317 net zero emissions by 2050 scenario  world bioenergy and waste                        power sector inputs 2020    99.10  0.000000e+00  weo
      318 net zero emissions by 2050 scenario  world bioenergy and waste                        power sector inputs 2030    -8.58  1.086579e+00  weo
      319 net zero emissions by 2050 scenario  world bioenergy and waste                        power sector inputs 2040  -335.13  4.381736e+00  weo
      320 net zero emissions by 2050 scenario  world bioenergy and waste                        power sector inputs 2050  -421.46  5.252876e+00  weo
      321 net zero emissions by 2050 scenario  world               total      total aviation (domestic and bunkers) 2040   511.02  1.284133e-01  weo
      322            stated policies scenario  world               total      total aviation (domestic and bunkers) 2050  1675.45 -1.857618e+00  weo
      323          announced pledges scenario  world               total      total aviation (domestic and bunkers) 2050  1073.76 -8.313861e-01  weo
      324 net zero emissions by 2050 scenario  world               total      total aviation (domestic and bunkers) 2050   199.44  6.598387e-01  weo
      325            stated policies scenario  world               total                        total energy supply 2020 31904.00  0.000000e+00  weo
      326          announced pledges scenario  world               total                        total energy supply 2020 31904.00  0.000000e+00  weo
      327 net zero emissions by 2050 scenario  world                coal                    total final consumption 2020  4474.28  0.000000e+00  weo
      328 net zero emissions by 2050 scenario  world                coal                    total final consumption 2030  2835.23  3.663271e-01  weo
      329 net zero emissions by 2050 scenario  world                coal                    total final consumption 2040  1043.45  7.667893e-01  weo
      330 net zero emissions by 2050 scenario  world                coal                    total final consumption 2050    72.92  9.837024e-01  weo
      331 net zero emissions by 2050 scenario  world                 oil                    total final consumption 2020  9080.06  0.000000e+00  weo
      332 net zero emissions by 2050 scenario  world                 oil                    total final consumption 2030  7162.05  2.112332e-01  weo
      333 net zero emissions by 2050 scenario  world                 oil                    total final consumption 2040  2864.50  6.845285e-01  weo
      334 net zero emissions by 2050 scenario  world                 oil                    total final consumption 2050   650.79  9.283276e-01  weo
      335 net zero emissions by 2050 scenario  world         natural gas                    total final consumption 2020  3320.85  0.000000e+00  weo
      336 net zero emissions by 2050 scenario  world         natural gas                    total final consumption 2030  2490.73  2.499721e-01  weo
      337 net zero emissions by 2050 scenario  world         natural gas                    total final consumption 2040  1094.30  6.704759e-01  weo
      338 net zero emissions by 2050 scenario  world         natural gas                    total final consumption 2050   213.23  9.357905e-01  weo
      339 net zero emissions by 2050 scenario  world bioenergy and waste                    total final consumption 2020   113.50  0.000000e+00  weo
      340 net zero emissions by 2050 scenario  world bioenergy and waste                    total final consumption 2030    28.89  7.454626e-01  weo
      341 net zero emissions by 2050 scenario  world bioenergy and waste                    total final consumption 2040   -96.18  1.847401e+00  weo
      342 net zero emissions by 2050 scenario  world bioenergy and waste                    total final consumption 2050  -204.82  2.804581e+00  weo
      343 net zero emissions by 2050 scenario  world               total                        total energy supply 2020 31904.00  0.000000e+00  weo
      344            stated policies scenario  world               total                        total energy supply 2030 33134.70 -3.857510e-02  weo
      345          announced pledges scenario  world               total                        total energy supply 2030 28803.00  9.719784e-02  weo
      346 net zero emissions by 2050 scenario  world               total                        total energy supply 2030 20590.40  3.546138e-01  weo
      347            stated policies scenario  world               total                        total energy supply 2040 30799.90  3.460695e-02  weo
      348          announced pledges scenario  world               total                        total energy supply 2040 18554.40  4.184303e-01  weo
      349 net zero emissions by 2050 scenario  world               total                        total energy supply 2040  5103.27  8.400429e-01  weo
      350            stated policies scenario  world               total                        total energy supply 2050 28946.40  9.270311e-02  weo
      351          announced pledges scenario  world               total                        total energy supply 2050 11346.50  6.443549e-01  weo
      352 net zero emissions by 2050 scenario  world               total                        total energy supply 2050   509.63  9.840261e-01  weo
      353            stated policies scenario  world               total                    total final consumption 2020 19521.60  0.000000e+00  weo
      354          announced pledges scenario  world               total                    total final consumption 2020 19521.60  0.000000e+00  weo
      355 net zero emissions by 2050 scenario  world               total                    total final consumption 2020 19521.60  0.000000e+00  weo
      356            stated policies scenario  world               total                    total final consumption 2030 21627.00 -1.078498e-01  weo
      357          announced pledges scenario  world               total                    total final consumption 2030 18784.80  3.774281e-02  weo
      358 net zero emissions by 2050 scenario  world               total                    total final consumption 2030 14765.00  2.436583e-01  weo
      359            stated policies scenario  world               total                    total final consumption 2040 21501.30 -1.014107e-01  weo
      360          announced pledges scenario  world               total                    total final consumption 2040 13438.20  3.116240e-01  weo
      361 net zero emissions by 2050 scenario  world               total                    total final consumption 2040  6092.07  6.879318e-01  weo
      362            stated policies scenario  world               total                    total final consumption 2050 21056.10 -7.860524e-02  weo
      363          announced pledges scenario  world               total                    total final consumption 2050  9123.89  5.326259e-01  weo
      364 net zero emissions by 2050 scenario  world               total                    total final consumption 2050  1004.68  9.485350e-01  weo
      365            stated policies scenario  world               total    total navigation (domestic and bunkers) 2020   795.85  0.000000e+00  weo
      366          announced pledges scenario  world               total    total navigation (domestic and bunkers) 2020   795.85  0.000000e+00  weo
      367 net zero emissions by 2050 scenario  world               total    total navigation (domestic and bunkers) 2020   795.85  0.000000e+00  weo
      368            stated policies scenario  world               total    total navigation (domestic and bunkers) 2030   904.98 -1.371238e-01  weo
      369          announced pledges scenario  world               total    total navigation (domestic and bunkers) 2030   778.33  2.201420e-02  weo
      370 net zero emissions by 2050 scenario  world               total    total navigation (domestic and bunkers) 2030   673.37  1.538983e-01  weo
      371            stated policies scenario  world               total    total navigation (domestic and bunkers) 2040   978.64 -2.296790e-01  weo
      372          announced pledges scenario  world               total    total navigation (domestic and bunkers) 2040   524.75  3.406421e-01  weo
      373 net zero emissions by 2050 scenario  world               total    total navigation (domestic and bunkers) 2040   303.78  6.182949e-01  weo
      374            stated policies scenario  world               total    total navigation (domestic and bunkers) 2050  1144.94 -4.386379e-01  weo
      375          announced pledges scenario  world               total    total navigation (domestic and bunkers) 2050   361.89  5.452786e-01  weo
      376 net zero emissions by 2050 scenario  world               total    total navigation (domestic and bunkers) 2050   107.10  8.654269e-01  weo
      377            stated policies scenario  world               total                                  transport 2020  7112.95  0.000000e+00  weo
      378          announced pledges scenario  world               total                                  transport 2020  7112.95  0.000000e+00  weo
      379 net zero emissions by 2050 scenario  world               total                                  transport 2020  7112.95  0.000000e+00  weo
      380            stated policies scenario  world               total                                  transport 2030  8471.76 -1.910333e-01  weo
      381          announced pledges scenario  world               total                                  transport 2030  7616.07 -7.073296e-02  weo
      382 net zero emissions by 2050 scenario  world               total                                  transport 2030  5687.01  2.004710e-01  weo
      383            stated policies scenario  world               total                                  transport 2040  8570.57 -2.049248e-01  weo
      384          announced pledges scenario  world               total                                  transport 2040  5556.61  2.188037e-01  weo
      385 net zero emissions by 2050 scenario  world               total                                  transport 2040  2258.20  6.825227e-01  weo
      386            stated policies scenario  world               total                                  transport 2050  8699.66 -2.230734e-01  weo
      387          announced pledges scenario  world               total                                  transport 2050  4024.76  4.341644e-01  weo
      388 net zero emissions by 2050 scenario  world               total                                  transport 2050   535.16  9.247626e-01  weo

# sector_profile_companies hasn't changed

    Code
      as.data.frame(data)
    Output
                                     companies_id          company_name           clustered                                     activity_uuid_product_uuid isic_4digit           tilt_sector         tilt_subsector type              sector           subsector
      1  fleischerei-stiefsohn_00000005219477-001 fleischerei-stiefsohn               steel   0faa7ecb-fef2-5117-8993-387c1236-001e-49b5-aa3d-810c0214f9ce        2410                  <NA>                   <NA>  ipr            industry      iron and steel
      2  fleischerei-stiefsohn_00000005219477-001 fleischerei-stiefsohn               steel   0faa7ecb-fef2-5117-8993-387c1236-001e-49b5-aa3d-810c0214f9ce        2410                  <NA>                   <NA>  weo               total      iron and steel
      3         pecheries-basques_fra316541-00101     pecheries-basques            nitrogen 03fbf989-9a1a-5e3d-a5bd-15f36f89b3-af52-4826-97f7-cc35f80f226f        2029                  <NA>                   <NA>  ipr            industry           chemicals
      4         pecheries-basques_fra316541-00101     pecheries-basques            nitrogen 03fbf989-9a1a-5e3d-a5bd-15f36f89b3-af52-4826-97f7-cc35f80f226f        2029                  <NA>                   <NA>  weo               total           chemicals
      5     hoche-butter-gmbh_deu422723-693847001     hoche-butter-gmbh               waste                                                           <NA>          NA                energy      bioenergy & waste  ipr               total              energy
      6     hoche-butter-gmbh_deu422723-693847001     hoche-butter-gmbh               waste                                                           <NA>          NA                energy      bioenergy & waste  weo bioenergy and waste total energy supply
      7     hoche-butter-gmbh_deu422723-693847002     hoche-butter-gmbh                 car                                                           <NA>          NA        transportation         transportation  ipr           transport     other transport
      8     hoche-butter-gmbh_deu422723-693847002     hoche-butter-gmbh                 car                                                           <NA>          NA        transportation         transportation  weo               total           transport
      9     hoche-butter-gmbh_deu422723-693847003     hoche-butter-gmbh              heater                                                           <NA>          NA construction industry construction buildings  ipr           buildings                <NA>
      10    hoche-butter-gmbh_deu422723-693847003     hoche-butter-gmbh              heater                                                           <NA>          NA construction industry construction buildings  weo               total           buildings
      11  vicquelin-espaces-verts_fra697272-00101     vicquelin-espaces              biogas                                                           <NA>          NA                energy      bioenergy & waste  ipr               total              energy
      12  vicquelin-espaces-verts_fra697272-00101     vicquelin-espaces              biogas                                                           <NA>          NA                energy      bioenergy & waste  weo bioenergy and waste total energy supply
      13  vicquelin-espaces-verts_fra697272-00102     vicquelin-espaces          ice engine                                                           <NA>          NA        transportation         transportation  ipr           transport     other transport
      14  vicquelin-espaces-verts_fra697272-00102     vicquelin-espaces          ice engine                                                           <NA>          NA        transportation         transportation  weo               total           transport
      15  vicquelin-espaces-verts_fra697272-00103     vicquelin-espaces              bricks                                                           <NA>          NA construction industry construction buildings  ipr           buildings                <NA>
      16  vicquelin-espaces-verts_fra697272-00103     vicquelin-espaces              bricks                                                           <NA>          NA construction industry construction buildings  weo               total           buildings
      17                  fleisohn_0000000492-001              fleisohn                beer  011da854-af42-5570-a4506_136f89b3-af52-4826-97f7-cc35f80f226f        2029                  <NA>                   <NA>  ipr            industry           chemicals
      18                  fleisohn_0000000492-001              fleisohn                beer  011da854-af42-5570-a4506_136f89b3-af52-4826-97f7-cc35f80f226f        2029                  <NA>                   <NA>  weo               total           chemicals
      19   bst-procontrol-gmbh_00000005104947-001   bst-procontrol-gmbh              rubber     a6478da4-5cd6-5c9e-a00e35863ed-da3f-4255-a90d-623066f43fd3        1050                  <NA>                   <NA>  ipr            industry      other industry
      20   bst-procontrol-gmbh_00000005104947-001   bst-procontrol-gmbh              rubber     a6478da4-5cd6-5c9e-a00e35863ed-da3f-4255-a90d-623066f43fd3        1050                  <NA>                   <NA>  weo               total            industry
      21           leider-gmbh_00000005064318-001                leider alcoholic aperitifs 063e488f-803a-5d13-af19-c_cf47d9e8-58e4-41f9-bde9-4f938fdc8c7b        6758                  <NA>                   <NA>  ipr            industry      other industry
      22           leider-gmbh_00000005064318-001                leider alcoholic aperitifs 063e488f-803a-5d13-af19-c_cf47d9e8-58e4-41f9-bde9-4f938fdc8c7b        6758                  <NA>                   <NA>  weo               total            industry
      23           leider-gmbh_00000005064318-002                leider           aperitifs      61d00580-6742-5050-91e90c5322-b943-44d1-8f95-bc7e31a72990        6758                  <NA>                   <NA>  ipr            industry      other industry
      24           leider-gmbh_00000005064318-002                leider           aperitifs      61d00580-6742-5050-91e90c5322-b943-44d1-8f95-bc7e31a72990        6758                  <NA>                   <NA>  weo               total            industry
      25             cheries-baqu_neu316541-00101          cheries-baqu        fresh cheese  6e2f5d7d-37d0-5548-a38c-1535863ed-da3f-4255-a90d-623066f43fd3        1050                  <NA>                   <NA>  ipr            industry      other industry
      26             cheries-baqu_neu316541-00101          cheries-baqu        fresh cheese  6e2f5d7d-37d0-5548-a38c-1535863ed-da3f-4255-a90d-623066f43fd3        1050                  <NA>                   <NA>  weo               total            industry
      27       ca-coity-trg-aua-gmbh_00000384-001              ca-coity               shoes  6e2f5d7d-37d0-5548-a38c-1535863ed-da3f-4255-a90d-623066f43fd3        1050                  <NA>                   <NA>  ipr            industry      other industry
      28       ca-coity-trg-aua-gmbh_00000384-001              ca-coity               shoes  6e2f5d7d-37d0-5548-a38c-1535863ed-da3f-4255-a90d-623066f43fd3        1050                  <NA>                   <NA>  weo               total            industry

# sector_profile_upstream_companies hasn't changed

    Code
      as.data.frame(data)
    Output
                                    companies_id   clustered                                                activity_uuid_product_uuid                       ei_activity_name unit tilt_sector
      1 fleischerei-stiefsohn_00000005219477-001       stove 0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0-4cce-93b4-0745344da5fa       cookstove production or electric unit      energy
      2 fleischerei-stiefsohn_00000005219477-001        oven be06d25c-73dc-55fb-965b-0f300453e380_98b48ff2-2200-4b08-9dec-9c7c0e3585bc              microwave oven production unit      energy
      3        pecheries-basques_fra316541-00101       steel 977d997e-c257-5033-ba39-d0edeeef4ba2_0ace02fa-eca5-482d-a829-c18e46a52db4       market for steel, chromium steel   kg      energy
      4    hoche-butter-gmbh_deu422723-693847001 aged cheese ebb8475e-ff57-5e4e-937b-b5788186a5ca_ccee034c-8b6c-40d6-ac36-4c70c4623efa cheese production, soft, from cow milk   kg        <NA>
      5  vicquelin-espaces-verts_fra697272-00101 aged cheese ebb8475e-ff57-5e4e-937b-b5788186a5ca_ccee034c-8b6c-40d6-ac36-4c70c4623efa cheese production, soft, from cow milk   kg    land use
      6   bst-procontrol-gmbh_00000005104947-001      cheese ebb8475e-ff57-5e4e-937b-b5788186a5ca_ccee034c-8b6c-40d6-ac36-4c70c4623efa    market for cheese, fresh, unripened   kg    land use
      7           leider-gmbh_00000005064318-001       cream 2f7b77a7-1556-5c1b-b0aa-c4534ddc8885_38d493e9-6feb-4c66-86eb-2253ef8ee54d  market for seal, natural rubber based   kg    land use
      8             cheries-baqu_neu316541-00101      rubber 2f7b77a7-1556-5c1b-b0aa-c4534ddc8885_38d493e9-6feb-4c66-86eb-2253ef8ee54d  seal production, natural rubber based   kg    land use

# sector_profile_upstream_products hasn't changed

    Code
      as.data.frame(data)
    Output
                                                        activity_uuid_product_uuid                                          input_activity_uuid_product_uuid                               input_reference_product_name    input_unit input_isic_4digit     input_tilt_sector input_tilt_subsector type              sector                               subsector
      1  0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0-4cce-93b4-0745344da5fa 5de8c337-dea9-5c1f-9d90-002de27188be_8911bd8c-a96f-4440-9f8e-a7dacf5e79de                                                   biowaste            kg              3821 non-metallic minerals         raw minerals  ipr            no_match                                no_match
      2  0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0-4cce-93b4-0745344da5fa 5de8c337-dea9-5c1f-9d90-002de27188be_8911bd8c-a96f-4440-9f8e-a7dacf5e79de                                                   biowaste            kg              3821 non-metallic minerals         raw minerals  weo bioenergy and waste                     total energy supply
      3  0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0-4cce-93b4-0745344da5fa 1aeb18b9-8355-560f-82aa-543c771c4d61_a0e53510-b90b-43ba-80cc-7600f5da004f                                        chemical, inorganic            kg              2011 non-metallic minerals         raw minerals  ipr            industry                               chemicals
      4  0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0-4cce-93b4-0745344da5fa 1aeb18b9-8355-560f-82aa-543c771c4d61_a0e53510-b90b-43ba-80cc-7600f5da004f                                        chemical, inorganic            kg              2011 non-metallic minerals         raw minerals  weo               total                               chemicals
      5  0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0-4cce-93b4-0745344da5fa 22704506-7707-5ae7-990d-ebf01ac04fb5_50c41012-3b00-429d-ace3-40d0afb69746                                          chemical, organic            kg              1201 non-metallic minerals         raw minerals  ipr            industry                               chemicals
      6  0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0-4cce-93b4-0745344da5fa 22704506-7707-5ae7-990d-ebf01ac04fb5_50c41012-3b00-429d-ace3-40d0afb69746                                          chemical, organic            kg              1201 non-metallic minerals         raw minerals  weo               total                               chemicals
      7  0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0-4cce-93b4-0745344da5fa 92078219-1ed3-5215-9f70-931cdefad520_5c21b18e-e32d-4c76-8d16-2238632163c2                                                   cow milk            kg              4141 non-metallic minerals         raw minerals  ipr            land use                                    <NA>
      8  0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0-4cce-93b4-0745344da5fa 92078219-1ed3-5215-9f70-931cdefad520_5c21b18e-e32d-4c76-8d16-2238632163c2                                                   cow milk            kg              4141 non-metallic minerals         raw minerals  weo            no_match                                no_match
      9  0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0-4cce-93b4-0745344da5fa 9d483329-b09a-5513-b1bc-722cb211e928_bded6c5a-4dca-497e-bdd9-fcd343012087                                       cream, from cow milk            kg              1050 non-metallic minerals         raw minerals  ipr            industry                          other industry
      10 0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0-4cce-93b4-0745344da5fa 9d483329-b09a-5513-b1bc-722cb211e928_bded6c5a-4dca-497e-bdd9-fcd343012087                                       cream, from cow milk            kg              1050 non-metallic minerals         raw minerals  weo               total                                industry
      11 0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0-4cce-93b4-0745344da5fa 8709b463-732e-592e-9b88-999ed17af48f_6b6b3a15-e640-5730-baea-cda98afc61c2                                                      dairy            m3              4100 non-metallic minerals         raw minerals  ipr           buildings                                    <NA>
      12 0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0-4cce-93b4-0745344da5fa 8709b463-732e-592e-9b88-999ed17af48f_6b6b3a15-e640-5730-baea-cda98afc61c2                                                      dairy            m3              4100 non-metallic minerals         raw minerals  weo               total                               buildings
      13 0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0-4cce-93b4-0745344da5fa d44e7db1-4dda-5139-8a86-ed2929a8f1a2_32e60fbc-4778-470c-9653-feb859a3418f                                electricity, medium voltage           kwh              3510 non-metallic minerals         raw minerals  ipr               power                                    <NA>
      14 0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0-4cce-93b4-0745344da5fa d44e7db1-4dda-5139-8a86-ed2929a8f1a2_32e60fbc-4778-470c-9653-feb859a3418f                                electricity, medium voltage           kwh              3510 non-metallic minerals         raw minerals  weo               total                     power sector inputs
      15 0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0-4cce-93b4-0745344da5fa 7c7718bb-2372-5d04-a7ac-1ae5b12b05e3_61396bcb-bf35-411a-a6a6-8543ccef83e8                  heat, district or industrial, natural gas            mj              3530 non-metallic minerals         raw minerals  ipr               total                                  energy
      16 0a242b09-772a-5edf-8e82-9cb4ba52a258_ae39ee61-d4d0-4cce-93b4-0745344da5fa 7c7718bb-2372-5d04-a7ac-1ae5b12b05e3_61396bcb-bf35-411a-a6a6-8543ccef83e8                  heat, district or industrial, natural gas            mj              3530 non-metallic minerals         raw minerals  weo               total                     total energy supply
      17 be06d25c-73dc-55fb-965b-0f300453e380_98b48ff2-2200-4b08-9dec-9c7c0e3585bc 529b4dd4-77bc-5ec7-8fa4-608073c719d0_66c93e71-f32b-4591-901c-55395db5c132 alkyd paint, white, without solvent, in 60% solution state            kg              2022 non-metallic minerals         raw minerals  ipr            industry                               chemicals
      18 be06d25c-73dc-55fb-965b-0f300453e380_98b48ff2-2200-4b08-9dec-9c7c0e3585bc 529b4dd4-77bc-5ec7-8fa4-608073c719d0_66c93e71-f32b-4591-901c-55395db5c132 alkyd paint, white, without solvent, in 60% solution state            kg              2022 non-metallic minerals         raw minerals  weo               total                               chemicals
      19 be06d25c-73dc-55fb-965b-0f300453e380_98b48ff2-2200-4b08-9dec-9c7c0e3585bc 2f749904-d216-59b5-b1b3-57a23f37b274_6a1374ce-3966-46e5-b189-6209e31de5b5                                      aluminium, cast alloy            kg              2420 non-metallic minerals         raw minerals  ipr            industry                   non-metallic minerals
      20 be06d25c-73dc-55fb-965b-0f300453e380_98b48ff2-2200-4b08-9dec-9c7c0e3585bc 2f749904-d216-59b5-b1b3-57a23f37b274_6a1374ce-3966-46e5-b189-6209e31de5b5                                      aluminium, cast alloy            kg              2420 non-metallic minerals         raw minerals  weo               total                                industry
      21 be06d25c-73dc-55fb-965b-0f300453e380_98b48ff2-2200-4b08-9dec-9c7c0e3585bc 65c5c7c5-8839-596c-9259-6c9e085498a7_759b89bd-3aa6-42ad-b767-5bb9ef5d331d                                            copper, cathode            kg              2420 non-metallic minerals         raw minerals  ipr            industry                   non-metallic minerals
      22 be06d25c-73dc-55fb-965b-0f300453e380_98b48ff2-2200-4b08-9dec-9c7c0e3585bc 65c5c7c5-8839-596c-9259-6c9e085498a7_759b89bd-3aa6-42ad-b767-5bb9ef5d331d                                            copper, cathode            kg              2420 non-metallic minerals         raw minerals  weo               total                                industry
      23 be06d25c-73dc-55fb-965b-0f300453e380_98b48ff2-2200-4b08-9dec-9c7c0e3585bc 2b68c964-42d3-576f-9710-ef9fa5d0d27d_bf0425ee-99c2-488e-9056-3495e9f4e9cb                                electricity, medium voltage           kwh              3510 non-metallic minerals         raw minerals  ipr               power                                    <NA>
      24 be06d25c-73dc-55fb-965b-0f300453e380_98b48ff2-2200-4b08-9dec-9c7c0e3585bc 2b68c964-42d3-576f-9710-ef9fa5d0d27d_bf0425ee-99c2-488e-9056-3495e9f4e9cb                                electricity, medium voltage           kwh              3510 non-metallic minerals         raw minerals  weo               total                     power sector inputs
      25 be06d25c-73dc-55fb-965b-0f300453e380_98b48ff2-2200-4b08-9dec-9c7c0e3585bc 562d638a-1d13-5e98-88d3-acd7d32431d3_2da20646-8adf-460b-bd65-c9fc35494b66        energy and auxilliary inputs, metal working factory            kg              6259 non-metallic minerals         raw minerals  ipr            industry                          iron and steel
      26 be06d25c-73dc-55fb-965b-0f300453e380_98b48ff2-2200-4b08-9dec-9c7c0e3585bc 562d638a-1d13-5e98-88d3-acd7d32431d3_2da20646-8adf-460b-bd65-c9fc35494b66        energy and auxilliary inputs, metal working factory            kg              6259 non-metallic minerals         raw minerals  weo               total                          iron and steel
      27 be06d25c-73dc-55fb-965b-0f300453e380_98b48ff2-2200-4b08-9dec-9c7c0e3585bc a2c5638c-dc3e-5a87-97b1-77a982439045_adb8247d-8bbd-45aa-b111-289d0e5e2307                                       flat glass, uncoated            kg              2310 non-metallic minerals         raw minerals  ipr            industry                   non-metallic minerals
      28 be06d25c-73dc-55fb-965b-0f300453e380_98b48ff2-2200-4b08-9dec-9c7c0e3585bc a2c5638c-dc3e-5a87-97b1-77a982439045_adb8247d-8bbd-45aa-b111-289d0e5e2307                                       flat glass, uncoated            kg              2310 non-metallic minerals         raw minerals  weo               total                                industry
      29 be06d25c-73dc-55fb-965b-0f300453e380_98b48ff2-2200-4b08-9dec-9c7c0e3585bc 7f8f858d-2dc1-5e72-9c43-5a1bb22ace8c_66c93e71-f32b-4591-901c-55395db5c132                                         waste mineral wool            kg              3830 non-metallic minerals         raw minerals  ipr            no_match                                no_match
      30 be06d25c-73dc-55fb-965b-0f300453e380_98b48ff2-2200-4b08-9dec-9c7c0e3585bc 7f8f858d-2dc1-5e72-9c43-5a1bb22ace8c_66c93e71-f32b-4591-901c-55395db5c132                                         waste mineral wool            kg              3830 non-metallic minerals         raw minerals  weo            no_match                                no_match
      31 977d997e-c257-5033-ba39-d0edeeef4ba2_0ace02fa-eca5-482d-a829-c18e46a52db4 36ca833f-9fa8-57e3-8685-3d1305c13d84_66c93e71-f32b-4591-901c-55395db5c132                                 seal, natural rubber based            kg              2029 non-metallic minerals         raw minerals  ipr            industry                               chemicals
      32 977d997e-c257-5033-ba39-d0edeeef4ba2_0ace02fa-eca5-482d-a829-c18e46a52db4 36ca833f-9fa8-57e3-8685-3d1305c13d84_66c93e71-f32b-4591-901c-55395db5c132                                 seal, natural rubber based            kg              2029 non-metallic minerals         raw minerals  weo               total                               chemicals
      33 977d997e-c257-5033-ba39-d0edeeef4ba2_0ace02fa-eca5-482d-a829-c18e46a52db5 5715f39f-04ca-5a76-bd2c-d24bf8f384dd_fbb039f7-f9cc-46d2-b631-313ddb125c1a                                   transport, freight train metric ton*km              4912 non-metallic minerals         raw minerals  ipr           transport                         other transport
      34 977d997e-c257-5033-ba39-d0edeeef4ba2_0ace02fa-eca5-482d-a829-c18e46a52db5 5715f39f-04ca-5a76-bd2c-d24bf8f384dd_fbb039f7-f9cc-46d2-b631-313ddb125c1a                                   transport, freight train metric ton*km              4912 non-metallic minerals         raw minerals  weo               total                               transport
      35 977d997e-c257-5033-ba39-d0edeeef4ba2_0ace02fa-eca5-482d-a829-c18e46a52db6 4c0298db-adbe-5cef-8d1f-417873c2b1d1_66c93e71-f32b-4591-901c-55395db5c132               transport, freight, light commercial vehicle metric ton*km              4923 non-metallic minerals         raw minerals  ipr           transport                                  trucks
      36 977d997e-c257-5033-ba39-d0edeeef4ba2_0ace02fa-eca5-482d-a829-c18e46a52db6 4c0298db-adbe-5cef-8d1f-417873c2b1d1_66c93e71-f32b-4591-901c-55395db5c132               transport, freight, light commercial vehicle metric ton*km              4923 non-metallic minerals         raw minerals  weo               total                                    road
      37 977d997e-c257-5033-ba39-d0edeeef4ba2_0ace02fa-eca5-482d-a829-c18e46a52db7 eafc47dd-72a9-5acc-935f-c953ce042126_cf47d9e8-58e4-41f9-bde9-4f938fdc8c7b                     transport, freight, lorry, unspecified metric ton*km              4923 non-metallic minerals         raw minerals  ipr           transport                                  trucks
      38 977d997e-c257-5033-ba39-d0edeeef4ba2_0ace02fa-eca5-482d-a829-c18e46a52db7 eafc47dd-72a9-5acc-935f-c953ce042126_cf47d9e8-58e4-41f9-bde9-4f938fdc8c7b                     transport, freight, lorry, unspecified metric ton*km              4923 non-metallic minerals         raw minerals  weo               total                                    road
      39 977d997e-c257-5033-ba39-d0edeeef4ba2_0ace02fa-eca5-482d-a829-c18e46a52db8 84d234b1-b50a-5759-a247-a88d96e09409_db66eb0b-7b48-4300-8134-2c851292cc14                    transport, freight, sea, container ship metric ton*km              5012 non-metallic minerals         raw minerals  ipr           transport                                shipping
      40 977d997e-c257-5033-ba39-d0edeeef4ba2_0ace02fa-eca5-482d-a829-c18e46a52db8 84d234b1-b50a-5759-a247-a88d96e09409_db66eb0b-7b48-4300-8134-2c851292cc14                    transport, freight, sea, container ship metric ton*km              5012 non-metallic minerals         raw minerals  weo               total total navigation (domestic and bunkers)
      41 977d997e-c257-5033-ba39-d0edeeef4ba2_0ace02fa-eca5-482d-a829-c18e46a52db9 38891f7a-6f3f-5b0b-8348-acbf17332e62_4bc66efe-f91b-48e5-9a26-07e383d47e80                                 chemical factory, organics          unit              4290 non-metallic minerals         raw minerals  ipr           buildings                                    <NA>
      42 977d997e-c257-5033-ba39-d0edeeef4ba2_0ace02fa-eca5-482d-a829-c18e46a52db9 38891f7a-6f3f-5b0b-8348-acbf17332e62_4bc66efe-f91b-48e5-9a26-07e383d47e80                                 chemical factory, organics          unit              4290 non-metallic minerals         raw minerals  weo               total                               buildings
      43 ebb8475e-ff57-5e4e-937b-b5788186a5ca_ccee034c-8b6c-40d6-ac36-4c70c4623efa 87f0a9b4-a63b-5d96-be53-ae33c5bf1f65_66c93e71-f32b-4591-901c-55395db5c132                                 steel, chromium steel 18/8            kg              2410 non-metallic minerals         raw minerals  ipr            industry                          iron and steel
      44 ebb8475e-ff57-5e4e-937b-b5788186a5ca_ccee034c-8b6c-40d6-ac36-4c70c4623efa 87f0a9b4-a63b-5d96-be53-ae33c5bf1f65_66c93e71-f32b-4591-901c-55395db5c132                                 steel, chromium steel 18/8            kg              2410 non-metallic minerals         raw minerals  weo               total                          iron and steel
      45 ebb8475e-ff57-5e4e-937b-b5788186a5ca_ccee034c-8b6c-40d6-ac36-4c70c4623efa 27379124-a824-5560-a5dd-806a73b017e1_d69294d7-8d64-4915-a896-9996a014c410                                   transport, freight train metric ton*km              4912 non-metallic minerals         raw minerals  ipr           transport                         other transport
      46 ebb8475e-ff57-5e4e-937b-b5788186a5ca_ccee034c-8b6c-40d6-ac36-4c70c4623efa 27379124-a824-5560-a5dd-806a73b017e1_d69294d7-8d64-4915-a896-9996a014c410                                   transport, freight train metric ton*km              4912 non-metallic minerals         raw minerals  weo               total                               transport
      47 ebb8475e-ff57-5e4e-937b-b5788186a5ca_ccee034c-8b6c-40d6-ac36-4c70c4623efa 6773fc9d-4cb0-5208-a360-d13a806372c8_66c93e71-f32b-4591-901c-55395db5c132                transport, freight, inland waterways, barge metric ton*km              5022 non-metallic minerals         raw minerals  ipr           transport                                shipping
      48 ebb8475e-ff57-5e4e-937b-b5788186a5ca_ccee034c-8b6c-40d6-ac36-4c70c4623efa 6773fc9d-4cb0-5208-a360-d13a806372c8_66c93e71-f32b-4591-901c-55395db5c132                transport, freight, inland waterways, barge metric ton*km              5022 non-metallic minerals         raw minerals  weo               total total navigation (domestic and bunkers)
      49 ebb8475e-ff57-5e4e-937b-b5788186a5ca_ccee034c-8b6c-40d6-ac36-4c70c4623efa f08f52c5-583d-5459-92f7-ed216a32eed2_1b30b018-ac39-41f4-a9e0-92057eef8bb8                     transport, freight, lorry, unspecified metric ton*km              4923 non-metallic minerals         raw minerals  ipr           transport                                  trucks
      50 ebb8475e-ff57-5e4e-937b-b5788186a5ca_ccee034c-8b6c-40d6-ac36-4c70c4623efa f08f52c5-583d-5459-92f7-ed216a32eed2_1b30b018-ac39-41f4-a9e0-92057eef8bb8                     transport, freight, lorry, unspecified metric ton*km              4923 non-metallic minerals         raw minerals  weo               total                                    road
      51 ebb8475e-ff57-5e4e-937b-b5788186a5ca_ccee034c-8b6c-40d6-ac36-4c70c4623efa c5f28517-0c26-5746-9afe-3f3a48bfc71c_85a9dd8c-769e-4528-9a1a-105ab3269262        transport, freight, sea, bulk carrier for dry goods metric ton*km              5012 non-metallic minerals         raw minerals  ipr           transport                                shipping
      52 ebb8475e-ff57-5e4e-937b-b5788186a5ca_ccee034c-8b6c-40d6-ac36-4c70c4623efa c5f28517-0c26-5746-9afe-3f3a48bfc71c_85a9dd8c-769e-4528-9a1a-105ab3269262        transport, freight, sea, bulk carrier for dry goods metric ton*km              5012 non-metallic minerals         raw minerals  weo               total total navigation (domestic and bunkers)
      53 2f7b77a7-1556-5c1b-b0aa-c4534ddc8885_38d493e9-6feb-4c66-86eb-2253ef8ee54d 6737f21a-54a8-58d5-a695-d3e724540ab7_66c93e71-f32b-4591-901c-55395db5c132                  acrylonitrile-butadiene-styrene copolymer            kg              2013 non-metallic minerals         raw minerals  ipr            industry                          other industry
      54 2f7b77a7-1556-5c1b-b0aa-c4534ddc8885_38d493e9-6feb-4c66-86eb-2253ef8ee54d 6737f21a-54a8-58d5-a695-d3e724540ab7_66c93e71-f32b-4591-901c-55395db5c132                  acrylonitrile-butadiene-styrene copolymer            kg              2013 non-metallic minerals         raw minerals  weo               total                               chemicals
      55 2f7b77a7-1556-5c1b-b0aa-c4534ddc8885_38d493e9-6feb-4c66-86eb-2253ef8ee54d 582707f4-f961-5779-b1d9-507bdf5624ef_a9007f10-7e39-4d50-8f4a-d6d03ce3d673                                      aluminium, cast alloy            kg              2420 non-metallic minerals         raw minerals  ipr            industry                   non-metallic minerals
      56 2f7b77a7-1556-5c1b-b0aa-c4534ddc8885_38d493e9-6feb-4c66-86eb-2253ef8ee54d 582707f4-f961-5779-b1d9-507bdf5624ef_a9007f10-7e39-4d50-8f4a-d6d03ce3d673                                      aluminium, cast alloy            kg              2420 non-metallic minerals         raw minerals  weo               total                                industry
      57 2f7b77a7-1556-5c1b-b0aa-c4534ddc8885_38d493e9-6feb-4c66-86eb-2253ef8ee54d e88cfd36-6260-50a9-9de2-02dc80b99a89_aa447135-9cc5-4f34-9385-ca2a0ae70d3c                                  electricity, high voltage           kwh              3510 non-metallic minerals         raw minerals  ipr               power                                    <NA>
      58 2f7b77a7-1556-5c1b-b0aa-c4534ddc8885_38d493e9-6feb-4c66-86eb-2253ef8ee54d e88cfd36-6260-50a9-9de2-02dc80b99a89_aa447135-9cc5-4f34-9385-ca2a0ae70d3c                                  electricity, high voltage           kwh              3510 non-metallic minerals         raw minerals  weo               total                     power sector inputs
      59 2f7b77a7-1556-5c1b-b0aa-c4534ddc8885_38d493e9-6feb-4c66-86eb-2253ef8ee54d 145b98e6-9f47-58dd-8464-e2f066fa4a4c_7c0ab4ca-e778-44c1-a33d-c26466d32c1a        energy and auxilliary inputs, metal working factory            kg              7259 non-metallic minerals         raw minerals  ipr            industry                          iron and steel
      60 2f7b77a7-1556-5c1b-b0aa-c4534ddc8885_38d493e9-6feb-4c66-86eb-2253ef8ee54d 145b98e6-9f47-58dd-8464-e2f066fa4a4c_7c0ab4ca-e778-44c1-a33d-c26466d32c1a        energy and auxilliary inputs, metal working factory            kg              7259 non-metallic minerals         raw minerals  weo               total                          iron and steel
      61 2f7b77a7-1556-5c1b-b0aa-c4534ddc8885_38d493e9-6feb-4c66-86eb-2253ef8ee54d 3bfd4c62-f01f-5cd1-9c80-30742f937963_00478901-732f-4bf4-81cc-2255f9874512       heat, central or small-scale, other than natural gas            mj              3530 non-metallic minerals         raw minerals  ipr               total                                  energy
      62 2f7b77a7-1556-5c1b-b0aa-c4534ddc8885_38d493e9-6feb-4c66-86eb-2253ef8ee54d 3bfd4c62-f01f-5cd1-9c80-30742f937963_00478901-732f-4bf4-81cc-2255f9874512       heat, central or small-scale, other than natural gas            mj              3530 non-metallic minerals         raw minerals  weo               total                     total energy supply
      63 2f7b77a7-1556-5c1b-b0aa-c4534ddc8885_38d493e9-6feb-4c66-86eb-2253ef8ee54d 7ba4b1a6-0e8f-5fb2-b429-f9c085fbab3c_d3e019ee-edbe-4774-a4a6-9701cf293d05                                                inert waste            kg              2394 non-metallic minerals         raw minerals  ipr            industry                   non-metallic minerals
      64 2f7b77a7-1556-5c1b-b0aa-c4534ddc8885_38d493e9-6feb-4c66-86eb-2253ef8ee54d 7ba4b1a6-0e8f-5fb2-b429-f9c085fbab3c_d3e019ee-edbe-4774-a4a6-9701cf293d05                                                inert waste            kg              2394 non-metallic minerals         raw minerals  weo               total           non-metallic minerals: cement
      65 2f7b77a7-1556-5c1b-b0aa-c4534ddc8885_38d493e9-6feb-4c66-86eb-2253ef8ee54d 95884d02-3ac6-5327-a7c2-fb6fb86a3946_1570a766-fe08-427f-94cb-6947995117ec                                                       lead            kg              2420 non-metallic minerals         raw minerals  ipr            industry                   non-metallic minerals
      66 2f7b77a7-1556-5c1b-b0aa-c4534ddc8885_38d493e9-6feb-4c66-86eb-2253ef8ee54d 95884d02-3ac6-5327-a7c2-fb6fb86a3946_1570a766-fe08-427f-94cb-6947995117ec                                                       lead            kg              2420 non-metallic minerals         raw minerals  weo               total                                industry
      67 2f7b77a7-1556-5c1b-b0aa-c4534ddc8885_38d493e9-6feb-4c66-86eb-2253ef8ee54d df576113-6029-5f97-a051-2972803313de_0bddecfa-a3d2-46fe-b31e-f794ff258621                                      metal working factory          unit              4100 non-metallic minerals         raw minerals  ipr           buildings                                    <NA>
      68 2f7b77a7-1556-5c1b-b0aa-c4534ddc8885_38d493e9-6feb-4c66-86eb-2253ef8ee54d df576113-6029-5f97-a051-2972803313de_0bddecfa-a3d2-46fe-b31e-f794ff258621                                      metal working factory          unit              4100 non-metallic minerals         raw minerals  weo               total                               buildings
      69 2f7b77a7-1556-5c1b-b0aa-c4534ddc8885_38d493e9-6feb-4c66-86eb-2253ef8ee54d c773f451-37ac-50b3-9a3c-47d25480e048_66c93e71-f32b-4591-901c-55395db5c132                                                  tap water            kg              3600 non-metallic minerals         raw minerals  ipr            no_match                                no_match
      70 2f7b77a7-1556-5c1b-b0aa-c4534ddc8885_38d493e9-6feb-4c66-86eb-2253ef8ee54d c773f451-37ac-50b3-9a3c-47d25480e048_66c93e71-f32b-4591-901c-55395db5c132                                                  tap water            kg              3600 non-metallic minerals         raw minerals  weo bioenergy and waste                     total energy supply
      71 2f7b77a7-1556-5c1b-b0aa-c4534ddc8885_38d493e9-6feb-4c66-86eb-2253ef8ee54d 3c080c8f-7c27-5453-9043-e2cfe14e198e_9b9edcf3-0539-4642-9516-0df642a5c41a                                                        tin            kg              2432 non-metallic minerals         raw minerals  ipr            industry                   non-metallic minerals
      72 2f7b77a7-1556-5c1b-b0aa-c4534ddc8885_38d493e9-6feb-4c66-86eb-2253ef8ee54d 3c080c8f-7c27-5453-9043-e2cfe14e198e_9b9edcf3-0539-4642-9516-0df642a5c41a                                                        tin            kg              2432 non-metallic minerals         raw minerals  weo               total                                industry
      73 2f7b77a7-1556-5c1b-b0aa-c4534ddc8885_38d493e9-6feb-4c66-86eb-2253ef8ee54d 1ba65a3e-3e14-5238-a95a-5bec05f9b1ff_bd20be8e-9b7a-4391-980f-4ecf8f2867be                                                waste glass            kg              3821 non-metallic minerals         raw minerals  ipr            no_match                                no_match
      74 2f7b77a7-1556-5c1b-b0aa-c4534ddc8885_38d493e9-6feb-4c66-86eb-2253ef8ee54d 1ba65a3e-3e14-5238-a95a-5bec05f9b1ff_bd20be8e-9b7a-4391-980f-4ecf8f2867be                                                waste glass            kg              3821 non-metallic minerals         raw minerals  weo bioenergy and waste                     total energy supply

