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

### Communication Protocols

Primary communication happens over slack group channel and working sessions happen over zoom meetings. 

## Overview 
The 2020 Covid-19 pandemic caused millions of Americans to isolate from others and practice social distance. The purpose of this group project is to find if there is a correlation between the covid-19 pandemic and a negative affect on mental health and depression rates. We will primarily look at changes in mental health and depression rates broken down by states in the United States. This analysis will be shared with interested investers to project profitable locations for mental health clinics and relaxation centers throughout the United States. After every subheading, there is a link that will direct you to the folder in our main branch. 
 

### Questions we are looking to answer:

* What impact did covid have on mental health especially depression?  
* Was every state affected the same way or were some states affected more than others? 
* Are the affects similar across age groups, income brackets, employment status, and education?
* Which states are ideal for investors to open mental health clinics and relaxation centers?
* How accurately will our ML predicts mental health issues across states/regions based on features ?


## Hypothesis

* Null Hypothesis:  There is no relation between the COVID-19 pandemic and any mental health issues 
* Alternate Hypothesis:  There is a relation between the COVID-19 pandemic and any mental health issues 


## Data Source
In order to prove our hypothesis, we will utilize the following data sets and create several machine learning models to see if there is a correlation between covid-19 and mental health.

* Covid Cases and Covid related deaths are broken down by states in 2021. [United_States_COVID-19_Cases_and_Deaths_by_State_over_Time.csv](https://github.com/ussyed11/Covid-19-Impact-on-Depression-in-USA/files/9073569/United_States_COVID-19_Cases_and_Deaths_by_State_over_Time.csv)
* Information on mental health diagnoses and substance use. https://www.datafiles.samhsa.gov/dataset/mental-health-client-level-data-2019-mh-cld-2019-ds0001
* A comprehensive table of Any Mental Illness, AMI, in Past Year: Among People Aged 18 or Older; by Gender and Detailed Age Category, Numbers in Thousands, 2019 and 2020. https://www.samhsa.gov/data/sites/default/files/reports/rpt35323/NSDUHDetailedTabs2020v25/NSDUHDetailedTabs2020v25/NSDUHDetTabsSect8pe2020.htm 
* The total number of covid cases and covid related deaths in 2020 and 2021 as reported by the Center for Controlled Disease. https://data.cdc.gov/Case-Surveillance/United-States-COVID-19-Cases-and-Deaths-by-State-o/9mfq-cb36/data 

* The States ranked by the Prevelance of Mental Health (AMI) for the year 2017. https://www.mhanational.org/sites/default/files/2017%20MH%20in%20America%20Full.pdf

* The States ranked by the Prevelance of Mental Health (AMI) for the year 2018.
https://www.mhanational.org/sites/default/files/2018%20The%20State%20of%20MH%20in%20America%20-%20FINAL.pdf 

* The States ranked by the Prevelance of Mental Health (AMI) for the year 2019. https://mhanational.org/sites/default/files/2019-09/2019%20MH%20in%20America%20Final.pdf
* The States ranked by the Prevelance of Mental Health (AMI) for the year 2020. https://www.mhanational.org/issues/2020/mental-health-america-prevalence-data
* The States ranked by the Prevelance of Mental Health (AMI) for the year 2021.https://www.mhanational.org/issues/2021/mental-health-america-prevalence-data
* Education Attainment broken down by US States. Economic Research Service(U.S. Department of Agriculture)https://www.ers.usda.gov/data-products/county-level-data-sets/download-data/ 

## Data Preprocessing
https://github.com/ussyed11/Covid-19-Impact-on-Mental-Illness-in-USA/tree/main/Data%20Preprocessing

We are using Google Colab to preprocess our data files, create dataframes, add or remove columns, remove null and Nan values, delete duplicates, and start with initial joins of databases in Pandas. We are using Matplotlib to explore data in scatter plots. The cleaned data set will be imported to a pgadmin4 database as a csv file format.
We first began processing data for the year 2019 and 2019 and doing the ETL and EDA for 4 datasets. We used multiple pandas and python functions to clean and transform our data to merge to be used in machine learning models. 
<img width="670" alt="Screen Shot 2022-07-22 at 7 26 33 PM" src="https://user-images.githubusercontent.com/100246124/180580312-58b44dc2-ad0f-41d7-a3f4-13ee3aff057f.png">
<img width="1037" alt="Screen Shot 2022-07-22 at 7 26 55 PM" src="https://user-images.githubusercontent.com/100246124/180580328-0109f47e-9cc5-4c80-91fd-89ce71f3b112.png">

We created some data visualizations to explore our data in detail: <img width="904" alt="Screen Shot 2022-07-22 at 7 32 02 PM" src="https://user-images.githubusercontent.com/100246124/180580552-766e1171-f1b8-4652-9ab5-1f1e54a923ce.png">

## Exploratory data analysis
<img src="https://user-images.githubusercontent.com/100246124/179753148-6efaf828-378d-4004-9051-d2eae4de62c7.jpg" width="600">
We started our initial analysis for any mental illness cases for the four regions:
West, South, Midwest, and  Northeast based on three age groups for two year 2019 & 2020.
<img src="https://user-images.githubusercontent.com/100246124/179753186-e3463211-bafc-4b06-8090-bff945733bfe.png" width="600">
Linear Regression Model with the best fit line. 
<img src="https://user-images.githubusercontent.com/100246124/179753443-b06e003b-b2ca-414a-a6b3-2ed7a5d20d4d.png" width="600" height="400" >
The total covid cases and deaths as reported by states. 

## Data Base
https://github.com/ussyed11/Covid-19-Impact-on-Mental-Illness-in-USA/tree/main/SQL

We are usinng PostgresSQL's pgadmin4 to store our data set and run SQL to find the needed information to create a final data set for the machine learning model.  We started with an ERD to show our initial data base structure via QuickDBD.  We selected our table names and datatypes. 

<img width="760" alt="Screen Shot 2022-07-22 at 8 03 10 PM" src="https://user-images.githubusercontent.com/100246124/180582007-b6ae23e1-2d58-4a53-ab6a-4195c31cc4b4.png">

## Machine Learning
https://github.com/ussyed11/Covid-19-Impact-on-Mental-Illness-in-USA/tree/main/ML 

An unsupervised machine learning algorithm of Elbow curve and k-means clustering is used to identify clusters of AMI based on covid-19 total cases. A limitation that we encountered when trying to run machine learning with our data set was the size of our data. 

Linear Regression Model

<img src="https://user-images.githubusercontent.com/100246124/180581062-20d727a0-f674-4516-bac2-63151ea4ecb2.png" width="600" height="400" >
Correlation function was used to check which features are strongly correlated
<img width="600" alt="Screen Shot 2022-07-22 at 7 44 40 PM" src="https://user-images.githubusercontent.com/100246124/180581163-6b9db52c-b781-4ed7-960d-eb1d34ce38e3.png">

Unsupervised Machine Learning Steps 

<img width="600"  alt="Screen Shot 2022-07-22 at 7 47 43 PM" src="https://user-images.githubusercontent.com/100246124/180581314-e8fcd3fc-6780-44fa-9bef-0f43f07fde6b.png">

Looked for the best K by creating an Elbow Curve

<img width="600" alt="Screen Shot 2022-07-22 at 7 48 48 PM" src="https://user-images.githubusercontent.com/100246124/180581356-7e5fcd88-f141-4391-b7dc-fee39a90e554.png">
Plot the five cluseters using the HV plot

_____
Multilinear Regression Model 

<img width="600" alt="Screen Shot 2022-07-22 at 7 51 56 PM" src="https://user-images.githubusercontent.com/100246124/180581498-38cae955-fc73-40d8-948b-1510c871676d.png">

After fiting our data into a multilinear Regression Model and using the sklearn.model, our training score improved to 0.70 and testing score improved to 0.38. 

## Tableau Story Dashboard 
https://github.com/ussyed11/Covid-19-Impact-on-Mental-Illness-in-USA/tree/main/Dashboard

We have our initial story/board created in tableau. We started with a drawn sketch before moving to tableau. 

<img width="500" height="400" alt="Screen Shot 2022-07-22 at 7 57 23 PM" src="https://user-images.githubusercontent.com/100246124/180581751-dc41cce8-cb74-406b-8a84-3802229d46c8.png">

## Initial Google Slides:

https://docs.google.com/presentation/d/1_zVBD73PyOs1N2mNhKlbCsAn87KuRsS9ESyjFUSO0Zo/edit?usp=sharing
