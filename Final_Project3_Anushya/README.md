Energy consumption analysis work:
Data sources:
-    Total energy consumption from 1960-2021: https://www.eia.gov/state/seds/sep_use/total/csv/use_all_btu.csv
-    Energy code definitions (used to determine that ‘RC’ = Residential consumption & AC = Transportation consumption : http://large.stanford.edu/courses/2016/ph240/goodwin2/docs/seds-consumption-2014.pdf 
-    Population data per state from right before covid to 2023: https://www.census.gov/data/tables/time-series/demo/popest/2020s-state-total.html
*Note, original data table headers and names were manually reformatted to allow for clean import into postgres and jupyter notebook (e.g. NST-EST2023-POP_orig cleaned to US population 2020 to 2023_ASM.csv. Also, raw BTU energy file titled use_all_btu was cleaned so that only the years of interest were included use_all_btu_ASM 22Dec23 for pop analysis).
SQL/Postgres data joining:
-    Use quick dbd to create structure for table that holds name and acronym for each state and export to postgres (table in postgres called stateabbrev).Import csv file titled State Abbreviations.csv.
-    Use quick dbd to create structure for table that holds state name and population per year from pre covid to 2023(table in postgres called uspopulation).Import csv file titled US Population 2020 to 2023_ASM.csv
-    Create view that replaces state name with state acronym called ‘newview’
-    Use quick dbd to create structure for table that holds state, energy code and btu per years of interest (2019 to 2021) and export/use in postgres– table in post gres called btu_2019to2021. 
-    Use new view to join population data with electricity data. Save as new view called view btu_by_stpop
-    Export view as btu_2019to2021.csv
*Note, all sql table building and queries can be found in the file titled Final SQL Query.sql.

Jupyter Notebook/html: data analysis and plotting (code can be found in the file titled Energy use per person.ipynb)
Residential energy consumption work:
-    Import libraries required (pandas, plotly plotly.express, plotly.offline)
-    Import file ‘btu_2019to2021.csv’ 
-    Create filter that only pulls residential energy consumption. 
-    Calculate energy consumption per capita by dividing total energy consumption by state population per year.
-    Group by year and graph a single line plot to show changes in total US Residential energy consumption per year (figb)
-    Group by state and year and calculate sum to get aggregate energy per capita consumed per state per year. 
-    Use plotly.express to create an interactive visual with a built in animated frame to demonstrate where states ranked in terms of ascending, per capita energy use (figa)
-    Create second fig for total residential energy consumed per state (fig2)
Transportation energy consumption analysis:
-    Calculate total transportation energy consumption for the US (sum across states) per year
-    Create line plot that shows trend right before covid (2019) and about 12 months after the shutdown (2021) – fig3. 
*Export all four figures into one html called multiplefigs.html
Javascript/HTML: 
-    Insert htmls into index.html main page as an element
-    Insert png as an element to compare transportation energy consumption trends found against consumer spending on transport
