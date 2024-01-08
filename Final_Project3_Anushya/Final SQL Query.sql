Drop TABLE if exists stateabbrev;
CREATE TABLE "stateabbrev" (
    "state" varchar   NOT NULL,
    "st_abbreviation" varchar   NOT NULL,
    CONSTRAINT "pk_stateabbrev" PRIMARY KEY (
        "state"
     )
);

Drop TABLE if exists uspopulation;
-- Drop view if exists uspopabbrev;
CREATE TABLE "uspopulation" (
    "2019" VARCHAR   NOT NULL,
    "2020" VARCHAR   NOT NULL,
    "2021" VARCHAR   NOT NULL,
    "2022" VARCHAR   NOT NULL,
    "2023" VARCHAR   NOT NULL,
    "State" VARCHAR   NOT NULL,
    CONSTRAINT "pk_uspopulation" PRIMARY KEY (
        "State"
     )
);

Select * from stateabbrev;
Select * from uspopulation;
--Create a view that replaces the state abbrevations for the whole state name

Drop view if exists newview;
Create view newview as
Select stateabbrev.st_abbreviation,uspopulation."2019",uspopulation."2020",uspopulation."2021",uspopulation."2022",uspopulation."2023"
from uspopulation
inner join stateabbrev on stateabbrev.state=uspopulation.state;
Select * from newview;
--Use new view to join population data with  electricity  data

-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.
Drop TABLE if exists btu_2019to2021;
CREATE TABLE "btu_2019to2021" (
    "state" VARCHAR   NOT NULL,
    "code" VARCHAR   NOT NULL,
    "btu_2019" VARCHAR   NOT NULL,
    "btu_2020" VARCHAR   NOT NULL,
    "btu_2021" VARCHAR   NOT NULL
);
--Confirm table was imported correctly
Select * FROM btu_2019to2021;

Drop view if exists btu_by_stpop;
Create view btu_by_stpop as
Select newview.st_abbreviation, newview."2019",newview."2020",newview."2021",newview."2022",newview."2023", btu_2019to2021.code,btu_2019to2021.btu_2019,btu_2019to2021.btu_2020,btu_2019to2021.btu_2021
FROM newview 
inner JOIN btu_2019to2021 on newview.st_abbreviation=btu_2019to2021.state;
SELECT * FROM btu_by_stpop;
--Export data from btu_by_stpop view as btu_2019to2021.csv\
--import data on jupyter notebook to conduct mathematical analysis of energy use per year during covid 