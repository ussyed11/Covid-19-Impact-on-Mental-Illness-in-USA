![covid-mh-prime](https://user-images.githubusercontent.com/98566486/178073212-c4bd7c12-8c4b-4964-8dcd-a857379149c3.jpg)

# Covid-19-and-Current-Mental Health-Correlation
## Group Members
 Members     | Role     |    Responsibilities  |
| ------------- | ------------- | -------- |
| Daniel          | Database  Lead       | Create databases and manage the ETL process |
| Darren| Machine Learning Lead         | Creating a machine learning model |
|Dwayne |Dashboard Lead | Create a dashboard to present the data
|Jessica| Github Lead | Responsible for updating the repository and ReadMe
|Uzma | Database Lead/Project Manager | Create databases and manage the ETL Process. 
## Overview 
The 2020 Covid-19 pandemic caused millions of Americans to isolate from others and practice social distance. The purpose of this group project is to find if there is a correlation between the covid-19 pandemic and a negative affect on mental health and depression rates. We will primarily look at changes in mental health and depression rates broken down by states in the United States. This analysis will be shared with interested investers to project profitable locations for mental health clinics and relaxation centers throughout the United States.
 

### Questions we are looking to answer:

* What impact did covid have on mental health especially depression?  
* Was every state affected the same way or were some states affected more than others? 
* Are the affects similar across age groups, income brackets, employment status, and education?
* Which states are ideal for investors to open mental health clinics and relaxation centers?
* How accurately will our ML predicts mental health issues across states/regions based on features ?


## Hypothesis

* Null Hypothesis:  There is no relation between the COVID-19 pandemic and an increase in any mental health issues 
* Alternate Hypothesis:  There is a relation between the COVID-19 pandemic and an increase in any mental health issues 


## Data Source
In order to prove our hypothesis, we will utilize the following data sets and create a linear regression model in order to attempt to find a correlation between covid-19 and mental health. 
* Percent of Adults struggling with depression from 2011-2020. This data is broken down by states. 
https://usafacts.org/data/topics/people-society/health/health-risk-factors/depression/ 
* Indicator- those who took prescription medication for mental health from 8/19/2020-8/31/2020. Data is broken down by age groups, sex, race, ethnicity, education level, and states. [Mental_Health_Care_in_the_Last_4_Weeks (3).csv](https://github.com/ussyed11/Covid-19-Impact-on-Depression-in-USA/files/9073567/Mental_Health_Care_in_the_Last_4_Weeks.3.csv)
* Symptoms of Depression Experienced in the Last two weeks is broken down by age groups, sex, gender, sexual orientation, race/ethnicity, education level, marital status,household size, income level. The data for each state can be found seperated by different tabs.  [US Census Depression Syndrome.xlsx](https://github.com/ussyed11/Covid-19-Impact-on-Depression-in-USA/files/9073568/US.Census.Depression.Syndrome.xlsx)
* Covid Cases and Covid related deaths are broken down by states in 2021. [United_States_COVID-19_Cases_and_Deaths_by_State_over_Time.csv](https://github.com/ussyed11/Covid-19-Impact-on-Depression-in-USA/files/9073569/United_States_COVID-19_Cases_and_Deaths_by_State_over_Time.csv)
* Information on mental health diagnoses and substance use. https://www.datafiles.samhsa.gov/dataset/mental-health-client-level-data-2019-mh-cld-2019-ds0001

## Data Preprocessing

We are using Google Colab to preprocess our data files, create dataframes, add or remove columns, remove null and Nan values, delete duplicates, and start with initial joins of databases in Pandas. We are using Matplotlib to explore data in scatter plots. The cleaned data set will be imported to a pgadmin4 database as a csv file format.

## Data Base

We are usinng PostgresSQL's pgadmin4 to store our data set and run SQL to find the needed information to create a final data set for the machine learning model.  We started with an ERD to show our initial data base structure via QuickDBD.  We selected our table names and datatypes.  

## Analysis 
<img src="https://user-images.githubusercontent.com/100246124/179753148-6efaf828-378d-4004-9051-d2eae4de62c7.jpg" width="600">
Mental Health of the 4 US regions broken down by age groups as reported for 2019 (pre-covid) and 2020(covid) year. 
<img src="https://user-images.githubusercontent.com/100246124/179753186-e3463211-bafc-4b06-8090-bff945733bfe.png" width="600">

<img src="https://user-images.githubusercontent.com/100246124/179753443-b06e003b-b2ca-414a-a6b3-2ed7a5d20d4d.png" width="600" height="400" >
The total covid cases and deaths as reported by states. 

## Machine Learning

We started loading a mock up data set to initiate the supervised machine learning model by choosing the linear regression model.  We will also use k-mean clustering to predict the ideal location for the prospect mental wellness centers.

## Initial Google Slides:

https://docs.google.com/presentation/d/1_zVBD73PyOs1N2mNhKlbCsAn87KuRsS9ESyjFUSO0Zo/edit?usp=sharing
