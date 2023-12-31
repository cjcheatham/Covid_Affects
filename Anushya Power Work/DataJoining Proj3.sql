Select * from stateabbrev;
Select * from uspopulation;
--Create a view that replaces the state abbrevations for the whole state name
Drop view if exists newview;
Create view newview as
Select stateabbrev.st_abbreviation,uspopulation."2019",uspopulation."2020",uspopulation."2021",uspopulation."2022",uspopulation."2023"
from uspopulation
inner join stateabbrev on stateabbrev.state=uspopulation.state;
Select * from newview;
--Use new view to 