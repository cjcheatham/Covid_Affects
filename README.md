# Project_3 - Covid 19 Affect or not?

## Covid Cases and Vaccinations

Using data collected from the CDC, usafacts.org, and the US Census Buearu, I was able to analyze the total number of confirmed covid cases across a state's population while and also see which vaccine manufacturer administered the highest amount of vaccines in a given state.

## Ethical Considerations:
Initially, our group considered analyzing real data from a fitness company that one of our team members works for. However, after taking look at the relevant datasets, we decided that it would disseminate or risk disseminating personal information about the company's clientele. Therefore, we chose to analyze Covid-19 data to see any new trends and the impact on national consumer spending as we were able to find anonymized data for our respective topics. We chose to analyze data at the highest levels where conclusions around race, age, political believes, etc. cannot be drawn. Lastly, all raw data sources and statistics found on national trends from the last few years have been referenced in this read me and in the google slide presentation as well. 

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

 ## Section 2 (Yee Wai Huang)
Background

The dataset under scrutiny delves into the potential correlation between the reopening of K–12 schools and the transmission of COVID-19. This analysis aims to investigate the connection between the surge in COVID-19 cases, the timing of K–12 school reopenings in the United States, its impact on families with children in K-12 schools, and the consequential economic implications for the nation.

The project draws data from COVID School Data Hub, encompassing "All District Learning Model Data," "All School Learning Model Data," and "All State School and District COVID-19 Case Data." These datasets cover reports from 28 states during the period from 2020 to 2021.

This analysis incorporates tools such as Jupyter Lab, Python, VScode, JavaScript, PostgreSQL, and an ETL (Extract, Transform, Load) workflow facilitated with diagrams.

Data Cleaning Process:

Using Python:

1. SchoolPy.ipynb: Imported two datasets from COVID School Data Hub: District_Monthly_Shares_03.08.23.csv and 
   NCES_2020-2021_School_Demographics.csv. The former details each school district's learning method shares 
   (Hybrid, Virtual, Inperson) during 2020 to 2021, while the latter includes total enrollment figures per state.
    
2. Filtered and merged these datasets into a single dataframe, focusing on essential columns and creating pie charts to 
   display the learning method percentages during this period.
    
3. Exported the school_merged_data dataframe to school_clean_data.csv for interactive visualization in JavaScript.
    
4. SchoolCase.ipynb: Imported COVID-19 case reports from 33 separate states into a single dataframe for analysis.
    
5. Created a new dataframe including pertinent columns for analysis and processed the data to ensure consistency.
    
6. Derived a clean dataset for school_group with columns representing time periods and student case counts for MAP 
   plotting in JavaScript.
Data Analysis Process:

VScode with JavaScript

1. Created csvJSON.js functions to import CSV files.
    
2. Utilized logic.js to generate interactive MAP visuals depicting each state's reporting datasets, total enrollment 
   counts, and the distribution of inperson, hybrid, and virtual learning methods.
    
3. Employed geoJsonData.js to outline state borders using GeoJSON polygon coordinates.

4. Developed map.html to showcase the interactive MAP.
    
5. Designed app.js to import school_group.csv for interactive state selector visuals displaying K-12 school enrollment 
   and monthly bar chart representation from June 2020 to June 2021. 
    
6. Crafted index1.html for an interactive page housing the selector and bar chart.
    
7. Composed index.html as the main page with links to index1.html and map.html.
Database Integration:

PostgreSQL, PGAdmin, ETL

1. Created the covid_school_schema to import school_clean_data and school_group datasets.
    
2. Implemented an ETL process, setting school_clean_data['state'] as the primary key and establishing a one-to-many 
   relationship with school_group['state'].
    
3. Executed queries on both tables to validate the accurate importation and organization of the database.
Resources:

https://www.covidschooldatahub.com/data-resources

https://assets.ctfassets.net/9fbw4onh0qc1/3JXV9ahOubLLnh9aHTHgKv/6e3c8a2baf1f2e0517edd9e454ee5c74/CSDH_District_Files_-_CSV.zip

https://assets.ctfassets.net/9fbw4onh0qc1/Iz122B08nXi5KAj7Ibxqs/134dc4172e422bae944910a7893e1477/CSDH_COVID-19_Data_CSV.zip

https://github.com/PublicaMundi/MappingAPI/blob/master/data/geojson/us-states.json?short_path=1c1ebe5

Section 3 ##  Energy consumption analysis work:
Data sources:
-    Total energy consumption from 1960-2021: https://www.eia.gov/state/seds/sep_use/total/csv/use_all_btu.csv
-    Energy code definitions (used to determine that ‘RC’ = Residential consumption & AC = Transportation consumption : http://large.stanford.edu/courses/2016/ph240/goodwin2/docs/seds-consumption-2014.pdf 
-    Population data per state from right before covid to 2023: https://www.census.gov/data/tables/time-series/demo/popest/2020s-state-total.html
-    Guidance on how to create interactive bar plot with year/slider filter was pulled from this source : https://dev.to/chrisgreening/animating-60-years-of-us-energy-data-with-10-lines-of-python-afi (actual code and filters to manipulate energy data so that it is relevant to our covid analysis was done from scratch). 
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


  ## Section 4 (Jovane Cano): Consumer Spending Trends from Jan. 2020 - Dec. 2023

**National Level - Monthly Percentage Change in Consumer Spending**
Using data collected by [Affinity Solutions](https://www.affinity.solutions/) I analyzed the monthly percentage change in credit/debit card spending for US consumers for a variety of categories.  
The Consumer Spending categories are listed below, along with their descriptions:  

    'spend_all': 'Total Spending'
    'spend_aap': 'Spending in Apparel and Accessories'  
    'spend_acf': 'Spending in Accommodation and Food Services'  
    'spend_aer': 'Spending in Arts, Entertainment, and Recreation'  
    'spend_gen': 'Spending in General Merchandise Stores'  
    'spend_grf': 'Spending in Grocery and Food Stores'  
    'spend_hcs': 'Spending in Health Care and Social Assistance'  
    'spend_hic': 'Spending in Home Improvement Centers'  
    'spend_sgh': 'Spending in Sporting Goods and Hobby'  
    'spend_tws': 'Spending in Transportation'  
    'spend_retail_w_grocery': 'Spending in Retail Including Grocery Spending'  
    'spend_retail_no_grocery': 'Spending in Retail Excluding Grocery Spending'  
    'spend_durables': 'Spending in Durable Goods'  
    'spend_nondurables': 'Spending in Non-Durable Goods'  
    'spend_remoteservices': 'Spending in Remote Services'  
    'spend_inperson': 'Spending in In-Person Services'  

## **1. Percent Change in Total Consumer Spending (Jan. 20202 to December 2023)**
   - With the first case of Covid offically being diagnosed in late January of 2020, consumer spending did not decrease much in February (-0.8%).
   - However, as the nation became more of aware of this deadly virus in the following weeks, consumer spending declined. Unsurprisingly, total consumer spending saw its lowest point shortly after the nationwide lockdown was announced.
     The lockdown was announced in March and within just one month, **nationwide consumer spending dropped by about 28% in April.**
   - It took a full year for consumer spending to return to pre-covid levels; **Total consumer spending declined from Jan. 2020 to Jan. 2021.**
   - Fortunately, as the rest of the chart depicts, **the economy gradually recovered from the pandemic, seeing positive GDP growth as soon as Jan. 2021.**
     
![Total Consumer Spending Jan. 2020 to Dec. 2023](https://github.com/cjcheatham/Project_3/blob/jcano/newplot.png)  

  
## **2. Total Consumer Spending v.s. Consumer Spending in Transportation**  
   - A category that was of interest for us was Transportation/Engery.
   - As expected, with the lockdown taking place and most of us afraid of contracting the Covid-19 virus, Transportation and Energy consumption saw a decline. However, what did come as a surprise was the extent of the decline in Transportion in comparison to the Total Consumer Spending, as well as their recoveries.
   - As mentioned earlirer, a month after lockdowns were announced, **Total Consumer Spending had declined by approximately 28% since Covid-19**. Whereas, **Transportation/Energy consumption dropped by as much as 75% by April** which is a significant difference.
   - Furthermore, while total consumer spending returned to its pre-Covid levels by Jan. 2021, spending in Transportion did not unitl May of 2022, about a a year and a half after the lockdown ended here in the US. 
![Total Consumer Spending v.s. Consumer Spending in Transportation](https://github.com/cjcheatham/Covid_Affects/blob/jcano/newplot%20(8).png)  


## **3. Consumer Spending in In-Person Services v.s. Remote Services**  

-As the following chart displays, **remote services saw a tremendous growth during Covid**, with Covid bringing the age of hybrid work and schooling.  
-Only a small fraction of schools offered online coureses and hybrid work was not a common thing.  
-This is not necessarily a bad thing as it allows for more flexiable schedules, accommadates for different lifestyles/living arrangements, and grants access to opportunties that weren't otherwise an option.  
![Spending: In-Person Services v.s. Remote Services](https://github.com/cjcheatham/Covid_Affects/blob/jcano/newplot%20(4).png)  
  

## **4. Overview of National Consumer Spending by Categories**  
- Lastly, I analyzed Consumer Spending by all categories.  
**Some of the least affected categories were the following: Spending in Durable Goods, Spending in Sporting Goods and Hobby, Spending in Grocery and Food Stores, and Spending in Home Improvement Centers.**
![Least affected Consumer Spending Categories](https://github.com/cjcheatham/Covid_Affects/blob/jcano/newplot%20(7).png) 
    
**Most affected categories were the following: Spending in In-Person Services and Spending in Transportation.**
![Most affected Consumer Spending Categories](https://github.com/cjcheatham/Covid_Affects/blob/jcano/newplot%20(6).png)  

**Overview of Consumer Spending Since Covid-19 (All Categories)**
![Overview of Consumer Spending Since Covid-19 (All Categories)](https://github.com/cjcheatham/Covid_Affects/blob/jcano/newplot%20(3).png)

