CREATE TABLE AMI_State_Totals_2017_to_2021 (
  Year VARCHAR(4) NOT NULL,
  State VARCHAR(20) NOT NULL,
  FIPS VARCHAR(10) NOT NULL,
  18_or_Older_AMI_Total smallint NOT NULL
);

CREATE TABLE Covid_Totals_2017_to_2021 (
  Year VARCHAR(4) NOT NULL,
  State VARCHAR(20) NOT NULL,
  FIPS VARCHAR(10) NOT NULL,
  Tot_Cases smallint NOT NULL,
  Tot_Deaths smallint NOT NULL
);

CREATE TABLE Educational_Attainment_Totals_2017_to_2021 (
  Year VARCHAR(4) NOT NULL,
  State VARCHAR(20) NOT NULL,
  FIPS VARCHAR(10) NOT NULL,
  <_High_School smallint NOT NULL,
  High_School smallint NOT NULL,
  Some_College_or_Associates_Degree smallint NOT NULL,
  Bachelors_Degree_or_Higher smallint NOT NULL      
);

CREATE TABLE Employment_Totals_2017_to_2021 (
  Year VARCHAR(4) NOT NULL,
  State VARCHAR(20) NOT NULL,
  FIPS VARCHAR(10) NOT NULL,
  Employed smallint NOT NULL,
  Unemployed smallint NOT NULL,
  Unemployment_Rate float NOT NULL,
  Civilian_Labor_Force smallint NOT NULL          
);

CREATE TABLE Median_Income_Totals_2017_to_2021 (
  Year VARCHAR(4) NOT NULL,
  State VARCHAR(20) NOT NULL,
  FIPS VARCHAR(10) NOT NULL,
  Median_Household_Income smallint NOT NULL,
  Median_Household_Income_Percent_of_State_Total float NOT NULL     
);