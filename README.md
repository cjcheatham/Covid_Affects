# Project_3

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

1. https://www.covidschooldatahub.com/data-resources
    
    * https://assets.ctfassets.net/9fbw4onh0qc1/3JXV9ahOubLLnh9aHTHgKv/6e3c8a2baf1f2e0517edd9e454ee5c74/CSDH_District_Files_-_CSV.zip
        
    * https://assets.ctfassets.net/9fbw4onh0qc1/Iz122B08nXi5KAj7Ibxqs/134dc4172e422bae944910a7893e1477/CSDH_COVID-19_Data_CSV.zip
        
2. https://github.com/PublicaMundi/MappingAPI/blob/master/data/geojson/us-states.json?short_path=1c1ebe5

       
    