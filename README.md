![covid-mh-prime](https://user-images.githubusercontent.com/98566486/178073212-c4bd7c12-8c4b-4964-8dcd-a857379149c3.jpg)

# Covid-19-and-Current-Mental Health-Correlation
## Overview 
The 2020 Covid-19 pandemic caused millions of Americans to isolate from others and practice social distance. The purpose of this group project is to find if there is a correlation between the covid-19 pandemic and a negative affect on mental health issues. According to SAMHSA, "Any Mental Illness (AMI) is defined as having a diagnosable mental, behavioral, or emotional disorder, other than a developmental or substance use disorder. Any mental illness includes persons who have mild mental illness, moderate mental illness, and serious mental illness." We will primarily look at changes in mental health issues broken down by states in the United States. This analysis will be shared with interested investers to project profitable locations for mental health clinics and relaxation centers throughout the United States.
 

### Questions we are looking to answer:

* What impact did covid-19 have on adults' mental health?  
* Was every state affected the same way or some states affected more than others? 
* Are the affects similar across age groups, income brackets, employment status, and education?
* Which reginal states are ideal for investors to open mental health clinics and relaxation centers?
* How accurately will the ML model predict the outcome for mental illness based on selected features?

## Hypothesis

* Null Hypothesis:  There is no correlation in COVID-19 and recent mental illness across the United States.
* Alternate Hypothesis:  There is a strong correlation in COVID-19 and recent mental illness across the United States.

### Team Method of Communication

We are going to use the Slack channel and Zoom to communicate and collabarate for our project. We are planning to meet at least twice a week outside of classroom hours to go over the files and codes.


## Data Extraction
In order to prove our hypothesis, we will utilize the following data sets and create a linear regression model and clustering model to see if there is a correlation between covid-19 and mental health. 

Our team started looking at CDC website that directed us to the SAMHSA website that has population survey data for mental illness. They have data stored until 2020.  We want to compare the 2019 data results with 2020 and 2021 to check the prevalence of any mental illness in all states.  We are unable to get the mental health data based on income levels for all states.  It is broken down to Regional levels. It is collected and stored based on age groups.  The 2021 mental illness data for all states is not available based on age groups either.   We have to run our mental issues analyses based on income and education on regional data.  We are going to get our required data sets through these methods:

* Uploading saved data as csv files
* ApI calls
* Web Scrapping using Beautiful soup

Our data files are as follow:

* Covid Cases and Covid related deaths broken down by states in 2021. [United_States_COVID-19_Cases_and_Deaths_by_State_over_Time.csv](https://github.com/ussyed11/Covid-19-Impact-on-Depression-in-USA/files/9073569/United_States_COVID-19_Cases_and_Deaths_by_State_over_Time.csv)
* Information on mental health diagnoses and substance use. https://www.datafiles.samhsa.gov/dataset/mental-health-client-level-data-2019-mh-cld-2019-ds0001

## Data Preprocessing

We are using Google Colab to preprocess our data files, add or remove columns, remove nulls and Nan, delete duplicates, and start with initial joins in Pandas. We are using Matplotlib to explore data in scatter plots. The cleaned data set will be imported to a pgadmin4 database as a csv file format.

## Data base

We are usinng PostgresSQL's pgadmin4 to store our data set and run SQL to find the needed information to create a final data set for the machine learning model.  We started with an ERD to show our initial data base structure via QuickDBD.  We selected our table names and datatypes.  

## Machine Learning

We started loading a mock up data set to initiate the supervised machine learning model by choosing the linear regression model.  We will also use k-mean clustering to predict the ideal location for the prospect mental wellness centers.

## Initial Google Slides:

https://docs.google.com/presentation/d/1_zVBD73PyOs1N2mNhKlbCsAn87KuRsS9ESyjFUSO0Zo/edit?usp=sharing




