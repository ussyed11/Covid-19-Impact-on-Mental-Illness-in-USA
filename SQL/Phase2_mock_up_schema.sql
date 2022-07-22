CREATE TABLE AMI_State_Totals_2017_to_2021 (
  Year VARCHAR(4) NOT NULL ,
  State VARCHAR(20) NOT NULL,
  FIPS VARCHAR(10) NOT NULL,
  18_or_Older_AMI_Total smallint NOT NULL,

);

CREATE TABLE Covid_Totals_2017_to_2021 (
  Year VARCHAR(4) NOT NULL,
  State VARCHAR(20) NOT NULL,
  FIPS VARCHAR(10) NOT NULL,
  Tot_Cases smallint NOT NULL,
  Tot_Deaths smallint NOT NULL,
);

CREATE TABLE Employment_Totals_2017_to_2021 (
  Year VARCHAR(4) NOT NULL,
  State VARCHAR(20) NOT NULL,
  FIPS VARCHAR(10) NOT NULL,
  Employed_2017 smallint NOT NULL,
  Unemployed_2017 smallint NOT NULL
  Employed_2018 smallint NOT NULL,
  Unemployed_2018 smallint NOT NULL
  Employed_2019 smallint NOT NULL,
  Unemployed_2019 smallint NOT NULL
  Employed_2020 smallint NOT NULL,
  Unemployed_2020 smallint NOT NULL
  Employed_2021 smallint NOT NULL,
  Unemployed_2021 smallint NOT NULL         
);

CREATE TABLE Median_Income_Total_2017_to_2021 (
  Year VARCHAR(4) NOT NULL,
  State VARCHAR(20) NOT NULL,
  FIPS VARCHAR(10) NOT NULL,
  Median_Household_Income smallint NOT NULL,        
);