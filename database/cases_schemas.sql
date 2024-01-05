-- DROP TABLES IF THEY EXIST
DROP TABLE IF EXISTS states;
DROP TABLE IF EXISTS cases;

CREATE TABLE cases(
    "state" VARCHAR(50) NOT NULL,
    "state_abv" VARCHAR(2) NOT NULL,
    "state_id" VARCHAR(2) NOT NULL,
    "date" DATE NOT NULL,
    "cases" INTEGER NOT NULL,
    "population" INTEGER NOT NULL,
    "cases_per_cap" FLOAT NOT NULL
);

CREATE TABLE states(
    "state_id" VARCHAR(2) NOT NULL,
    "state" VARCHAR(50) NOT NULL,
    "pop_2020" INTEGER NOT NULL,
    "pop_2021" INTEGER NOT NULL,
    "pop_2022" INTEGER NOT NULL,
    "pop_2023" INTEGER NOT NULL,
); 

SELECT * FROM cases;
SELECT * FROM states;