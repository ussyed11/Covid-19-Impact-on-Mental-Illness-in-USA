sql is used to create, join tables, the draft ERD and connect to database
CREATE TABLE 2019_Age_vs_Depression_Rates (
  State_ID VARCHAR(5) NOT NULL PRIMARY KEY,
  Age_Range_18_to_29 smallint NOT NULL,
  Age_Range_30_to_39 smallint NOT NULL,
  Age_Range_40_to_49 smallint NOT NULL,
  Age_Range_50_to_59 smallint NOT NULL,
  Age_Range_60_to_69 smallint NOT NULL, 
  Age_Range_70_to_79 smallint NOT NULL,
  Age_Range_80_and_above smallint NOT NULL,
  Total smallint NOT NULL
);

CREATE TABLE 2019_Household_Income_vs_Depression_Rates (
  State_ID VARCHAR(5) NOT NULL PRIMARY KEY,
  Less_than_25000 smallint NOT NULL,
  25000_to_34999 smallint NOT NULL,
  35000_to_49999 smallint NOT NULL,
  50000_to_74999 smallint NOT NULL,
  75000_to_99999 smallint NOT NULL,
  100000_to_149999 smallint NOT NULL,
  150000_to_199999 smallint NOT NULL,
  200000_and_above smallint NOT NULL,
  Did_not_report smallint NOT NULL,
  Total smallint NOT NULL
);

CREATE TABLE 2019_Employment_Status_vs_Depression_Rates (
  State_ID VARCHAR(5) NOT NULL PRIMARY KEY,
  Currently_Employed smallint NOT NULL,
  Currently_Unemployed smallint NOT NULL,
  Total smallint NOT NULL
);

CREATE TABLE 2019_Education_vs_Depression_Rates (
  State_ID VARCHAR(5) NOT NULL PRIMARY KEY,
  Less_than_High_School smallint NOT NULL,
  High_School_or_GED smallint NOT NULL,
  Some_College_or_Associates_Degree smallint NOT NULL,
  Bachelors_Degree_or_Higher smallint NOT NULL,
  Total smallint NOT NULL
);

CREATE TABLE 2021_Age_vs_Depression_Rates (
  State_ID VARCHAR(5) NOT NULL PRIMARY KEY,
  Age_Range_18_to_29 smallint NOT NULL,
  Age_Range_30_to_39 smallint NOT NULL,
  Age_Range_40_to_49 smallint NOT NULL,
  Age_Range_50_to_59 smallint NOT NULL,
  Age_Range_60_to_69 smallint NOT NULL, 
  Age_Range_70_to_79 smallint NOT NULL,
  Age_Range_80_and_above smallint NOT NULL,
  Total smallint NOT NULL  
);

CREATE TABLE 2021_Household_Income_vs_Depression_Rates  (
  State_ID VARCHAR(5) NOT NULL PRIMARY KEY,
  Less_than_25000 smallint NOT NULL,
  25000_to_34999 smallint NOT NULL,
  35000_to_49999 smallint NOT NULL,
  50000_to_74999 smallint NOT NULL,
  75000_to_99999 smallint NOT NULL,
  100000_to_149999 smallint NOT NULL,
  150000_to_199999 smallint NOT NULL,
  200000_and_above smallint NOT NULL,
  Did_not_report smallint NOT NULL
  Total smallint NOT NULL
);

CREATE TABLE 2021_Employment_Status_vs_Depression_Rates (
  State_ID VARCHAR(5) NOT NULL PRIMARY KEY,
  Currently_Employed smallint NOT NULL ,
  Currently_Unemployed smallint NOT NULL,
  Total smallint NOT NULL
);

CREATE TABLE 2021_Education_vs_Depression_Rates (
  State_ID VARCHAR(5) NOT NULL PRIMARY KEY,
  Less_than_High_School smallint NOT NULL,
  High_School_or_GED smallint NOT NULL,
  Some_College_or_Associates_Degree smallint NOT NULL,
  Bachelors_Degree_or_Higher smallint NOT NULL,
  Total smallint NOT NULL
);