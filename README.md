![covid-mh-prime](https://user-images.githubusercontent.com/98566486/178073212-c4bd7c12-8c4b-4964-8dcd-a857379149c3.jpg)

# Covid-19-and-Current-Mental Health-Correlation
## Overview 
The 2020 Covid-19 pandemic caused millions of Americans to isolate from others and practice social distance. The purpose of this group project is to find if there is a correlation between the covid-19 pandemic and a negative affect on mental health and depression rates. We will primarily look at changes in mental health and depression rates broken down by states in the United States. This analysis will be shared with interested investers to project profitable locations for mental health clinics and relaxation centers throughout the United States.
 

### Questions we are looking to answer:

* What impact did covid have on mental health especially depression?  
* Was every state affected the same way or were some states affected more than others? 
* Are the affects similar across age groups, income brackets, employment status, and education?
* Which states are ideal for investors to open mental health clinics and relaxation centers?
* How accurately will the ML model predict an ideal state for mental wellness centers?

## Hypothesis

* Null Hypothesis:  There is no correlation in COVID-19 and recent depression cases across the United States.
* Alternate Hypothesis:  There is a strong correlation in COVID-19 and recent depression cases across the United States.


## Data Source
In order to prove our hypothesis, we will utilize the following data sets and create a linear regression model to see if there is a correlation between covid-19 and mental health. 
* Percent of Adults struggling with depression from 2011-2020. This data is broken down by states. 
https://usafacts.org/data/topics/people-society/health/health-risk-factors/depression/ 
* Indicator- those who took prescription medication for mental health from 8/19/2020-8/31/2020. Data is broken down by age groups, sex, race, ethnicity, education level, and states. [Mental_Health_Care_in_the_Last_4_Weeks (3).csv](https://github.com/ussyed11/Covid-19-Impact-on-Depression-in-USA/files/9073567/Mental_Health_Care_in_the_Last_4_Weeks.3.csv)
* Symptoms of Depression Experienced in the Last two weeks broken down by age groups, sex, gender, sexual orientation, race/ethnicity, education level, marital status,household size, income level. each state has a different tab.  [US Census Depression Syndrome.xlsx](https://github.com/ussyed11/Covid-19-Impact-on-Depression-in-USA/files/9073568/US.Census.Depression.Syndrome.xlsx)
* Covid Cases and Covid related deaths broken down by states in 2021. [United_States_COVID-19_Cases_and_Deaths_by_State_over_Time.csv](https://github.com/ussyed11/Covid-19-Impact-on-Depression-in-USA/files/9073569/United_States_COVID-19_Cases_and_Deaths_by_State_over_Time.csv)
* Information on mental health diagnoses and substance use. https://www.datafiles.samhsa.gov/dataset/mental-health-client-level-data-2019-mh-cld-2019-ds0001

## Data Preprocessing

We are using Google Colab to preprocess our data files, add or remove columns, remove nulls and Nan, delete duplicates, and start with initial joins in Pandas. We are using Matplotlib to explore data in scatter plots. The cleaned data set will be imported to a pgadmin4 database as a csv file format.

## Database Storage

The data we extracted and transformed is stored in a PostgresSQL database that contains 4 tables created in pgAdmin4. We revised our preivous ERD diagram and reduced the amount of tables needed to store our separate dataframes due to the evolving constraints pertaining to our data wrangling. We continued to ensure that each seperate column in each dataframe had the correct datatype and values for each corresponding data entry. Once our dataframes were finalized we use SQL Alchemy in a GoogleColab/Jupyternotebook with a connection string to connect to our dataframes to their corresponding tables in PostgresSQL. Once the dataframes were properly stored in their respective tables we performed our first join between two seperate tables, AMI Totals and Covid Totals, on the column Year with a left join. Since each tables contains a corresponding Year column we will be able to join any table with the AMI Totals table.

## Machine Learning

We started loading a mock up data set to initiate the supervised machine learning model by choosing the linear regression model.  We will also use k-mean clustering to predict the ideal location for the prospect mental wellness centers.

## Initial Google Slides:

https://docs.google.com/presentation/d/1_zVBD73PyOs1N2mNhKlbCsAn87KuRsS9ESyjFUSO0Zo/edit?usp=sharing




