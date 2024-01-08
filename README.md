# Project_3 - Covid 19 Affect or not?

## Covid Cases and Vaccinations

Using data collected from the CDC, usafacts.org, and the US Census Buearu, I was able to analyze the total number of confirmed covid cases across a state's population while and also see which vaccine manufacturer administered the highest amount of vaccines in a given state.


## Data

The data folder is split between two sections, refernce and cleaned.

#### Reference

The reference section contians the following data sets:

* covid_confirmed_usafacts.csv 

    * This data set includes data on each county in the US. If contains the number of cases for each day in each county from January 2020 to July 2023.

* COVID-19_Vaccinations_in_the_United_States_Jurisdiction_20240104.csv

    * This data set includes the number of vaccines distributed and administered by different manufacturers, this data is then split up by state and by week. The dates range from January 2020 to May 2023.

* NST-EST2023-POP.xlsx

    * This data set includes the estimated population numbers for each state in the US. The years for the population estimates range from 2020-2023. This will be used to find the number of cases per capita in a later cleaned data set.

#### Cleaned and Cleaning Process

The clean section contains the following:

* cleaning_process folder

    * The files in this folder contain data that was used in creating the cleaned covid cases data set.

    * case_value_cleaning.xlsx

        * this data set contians the raw data from the covid_confirmed_usafacts.csv data set transposed for easier cleaning. This will be found in the raw sheet. There are a total of 52 sheets within this excel file, this includes the raw sheet. The remaining 51 sheets were used to take the number of covid cases from each county and each day and find the sum of confirmed cases for each county on a given day. Once the sum has been taken for all states, I converted the column that contained the sums and added it to the confirmed_covid_cases_cleaned.csv file. 

* confirmed_covid_cases_cleaned.csv 

    * This file is the cleaned covid cases data set. Instead of having data for each state's county, it holds the values for each state.

* states_cleaned_csv

    * This file contains data on each state's population for the years 2020, 2021, 2022, and 2023.

* covid_vaccines_cleaned.csv

    * This file contains data on the number of vaccines distributed by manufacturer and total, as well as the number administered by manufacturer and total. Each value is sorted by state and by week.

* administered_covid_vaccines_cleaned.csv & administered_2022_2023_cleaned.csv

    * These files are broken down further from the covid_vaccines_cleaned.csv file. These were cleaned within the visualizations.ipynb file.

## Visualizations

The visualizations for the confirmed covid cases include bar graphs for years in the range 2020-2023 which show the total number of cases per state in a given year. The html and png files for these are found in the bar_charts folder. 

The visualizations for the percentage of administered vaccinations by manufacturer are pie charts which show the distribution of vaccines by manufacturer. There is one pie chart per state. The html files for each chart can be found in the pie_charts folder.

Theses visualizations are stored in the following html files:

* covid_cases.html

* vaccine_manf_by_state.html

These files store each type of visualization into their respective html files. This is done so that they can be combined into the main html file used for this project, index.html. This file includes all analysis from all branches of this project, and will be shown on the main branch as well.

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
