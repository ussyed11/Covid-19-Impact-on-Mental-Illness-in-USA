![covid-mh-prime](https://user-images.githubusercontent.com/98566486/178073212-c4bd7c12-8c4b-4964-8dcd-a857379149c3.jpg)

# Covid-19 Impact on Any Mental Illness in USA
## Group Members
 Members     | Role     |    Responsibilities  |
| ------------- | ------------- | -------- |
| Daniel          | Database  Lead       | Create databases and manage the ETL process |
| Darren| Technology Lead         | 	Machine learning model/Tableau|
|Dwayne |Dashboard Lead | Create a dashboard to present the data
|Jessica| Github Lead | Responsible for updating the repository and ReadMe
|Uzma | Database Lead/Project Manager/Machine Learning Lead | Data ETL, EDA Process, and design Machine Learning model.

### Communication Protocols

Primary communication happens over slack group channel and working sessions happen over zoom meetings. 

## Overview 
The 2020 Covid-19 pandemic caused millions of Americans to isolate from others and practice social distance. This could lead to increase in any mental illness.  According to the National Institute of Mental Health, "Mental illnesses are common in the United States. Nearly one in five U.S. adults live with a mental illness (52.9 million in 2020). Mental illnesses include many different conditions that vary in degree of severity, ranging from mild to moderate to severe. Two broad categories can be used to describe these conditions: Any Mental Illness (AMI) and Serious Mental Illness (SMI). AMI encompasses all recognized mental illnesses."(NIMH)  The purpose of this group project is to find if there is a correlation between the covid-19 pandemic and a negative affect on any mental illness cases in the United Sates.   We will primarily look at changes in mental health and depression rates broken down by states in the United States. This analysis will be shared with interested investers to project profitable states for mental health clinics and relaxation centers throughout the United States as we are also incorporating other socioeconomic factors influencing the AMI rise among adults 18 and over.  

#### After every subheading, there is a link that will direct the reader to the folder in our main branch. 
 

## Questions we are looking to answer:

* What impact did covid have on any mental illness?  
* Was every state affected the same way or were some states affected more than others? 
* Are the affects similar across age groups, income brackets, employment status, and education?
* How accurately will our ML predict mental health issues across states/regions based on features?
* Which states are ideal for investors to open mental health clinics and relaxation centers?


## Hypothesis

* Null Hypothesis:  There is no correlation between the COVID-19 pandemic and any mental health issues 
* Alternate Hypothesis:  There is a correlation between the COVID-19 pandemic and any mental health issues 


## [Data Sources](https://github.com/ussyed11/Covid-19-Impact-on-Mental-Illness-in-USA/tree/main/Resources)

In order to prove our hypothesis, we will utilize the following data sets and create several machine learning models to see if there is a correlation between covid-19 and mental health outcome.

* Covid Cases and Covid related deaths are broken down by states in 2021. [United_States_COVID-19_Cases_and_Deaths_by_State_over_Time.csv](https://github.com/ussyed11/Covid-19-Impact-on-Depression-in-USA/files/9073569/United_States_COVID-19_Cases_and_Deaths_by_State_over_Time.csv)
* Information on mental health diagnoses and substance use. [Data](https://www.datafiles.samhsa.gov/dataset/mental-health-client-level-data-2019-mh-cld-2019-ds0001)
* A comprehensive table of Any Mental Illness, AMI, in Past Year: Among People Aged 18 or Older; by Gender and Detailed Age Category, Numbers in Thousands, 2019 and 2020. [Data](https://www.samhsa.gov/data/sites/default/files/reports/rpt35323/NSDUHDetailedTabs2020v25/NSDUHDetailedTabs2020v25/NSDUHDetTabsSect8pe2020.htm)
* The total number of covid cases and covid related deaths in 2020 and 2021 as reported by the Center for Controlled Disease. [Data](https://data.cdc.gov/Case-Surveillance/United-States-COVID-19-Cases-and-Deaths-by-State-o/9mfq-cb36/data) 

* The States ranked by the Prevelance of Mental Health (AMI) for the year 2017. [Data](https://www.mhanational.org/sites/default/files/2017%20MH%20in%20America%20Full.pdf)

* The States ranked by the Prevelance of Mental Health (AMI) for the year 2018.
[Data](https://www.mhanational.org/sites/default/files/2018%20The%20State%20of%20MH%20in%20America%20-%20FINAL.pdf) 

* The States ranked by the Prevelance of Mental Health (AMI) for the year 2019. [Data](https://mhanational.org/sites/default/files/2019-09/2019%20MH%20in%20America%20Final.pdf)

* The States ranked by the Prevelance of Mental Health (AMI) for the year 2020. [Data](https://www.mhanational.org/issues/2020/mental-health-america-prevalence-data)

* The States ranked by the Prevelance of Mental Health (AMI) for the year 2021.[Data](https://www.mhanational.org/issues/2021/mental-health-america-prevalence-data)

* Education Attainment broken down by US States. Economic Research Service(U.S. Department of Agriculture)[Data](https://www.ers.usda.gov/data-products/county-level-data-sets/download-data/) 

## [Data Preprocessing](https://github.com/ussyed11/Covid-19-Impact-on-Mental-Illness-in-USA/tree/main/Data%20Preprocessing)

We are using Google Colab to preprocess our data files, create dataframes, add or remove columns, remove null and Nan values, delete duplicates, and start with initial joins of databases in Pandas. We are using Matplotlib to explore data in scatter plots. The cleaned data set will be imported to a pgadmin4 database as a csv file format.
We first began processing data for the year 2019 and 2019 and doing the ETL and EDA for 4 datasets. We used multiple pandas and python functions to clean and transform our data to merge to be used in machine learning models. [dep_covod 77](https://github.com/ussyed11/Covid-19-Impact-on-Mental-Illness-in-USA/blob/gitignore/Data%20Preprocessing/dep_covod%2077.ipynb) 
<img width="670" alt="Screen Shot 2022-07-22 at 7 26 33 PM" src="https://user-images.githubusercontent.com/100246124/180580312-58b44dc2-ad0f-41d7-a3f4-13ee3aff057f.png">
<img width="1037" alt="Screen Shot 2022-07-22 at 7 26 55 PM" src="https://user-images.githubusercontent.com/100246124/180580328-0109f47e-9cc5-4c80-91fd-89ce71f3b112.png">

We created some data visualizations to explore our data in detail: <img width="904" alt="Screen Shot 2022-07-22 at 7 32 02 PM" src="https://user-images.githubusercontent.com/100246124/180580552-766e1171-f1b8-4652-9ab5-1f1e54a923ce.png">

## Exploratory Data Analysis: [Data Preprocessing](https://github.com/ussyed11/Covid-19-Impact-on-Mental-Illness-in-USA/blob/main/Data%20Preprocessing/pandas_preprocessing.ipynb)

The following file shows the exploratory data analysis and transformation: [EDA](https://github.com/ussyed11/Covid-19-Impact-on-Mental-Illness-in-USA/blob/main/Data%20Preprocessing/eda_final.ipynb)

<img src="https://user-images.githubusercontent.com/100246124/179753148-6efaf828-378d-4004-9051-d2eae4de62c7.jpg" width="600">
We started our initial analysis for any mental illness cases for the four regions:
West, South, Midwest, and  Northeast. Then we merged data into two age groups: adults 18+ and 18-26 for two year 2019 (Pre-Pandemic year) & 2020 (Pandemic Year).
<img src="https://user-images.githubusercontent.com/100246124/179753186-e3463211-bafc-4b06-8090-bff945733bfe.png" width="600">
Linear Regression Model with the best fit line.
<img src="https://user-images.githubusercontent.com/100246124/179753443-b06e003b-b2ca-414a-a6b3-2ed7a5d20d4d.png" width="600" height="400" >
This graph shows the total covid cases and deaths as reported by states. 

## Data Base: [SQL](https://github.com/ussyed11/Covid-19-Impact-on-Mental-Illness-in-USA/tree/main/SQL)

We are usinng PostgresSQL's pgadmin4 to store our data set and run SQL to find the needed information to create a final data set for the machine learning model.  We started with an ERD to show our initial data base structure via QuickDBD.  We selected our table names and datatypes. 
[Phase 2 ERD Diagram](https://github.com/ussyed11/Covid-19-Impact-on-Mental-Illness-in-USA/blob/main/SQL/Phase2_ERD_Diagram.png)

<img width="1345" alt="Screen Shot 2022-07-24 at 12 39 41 PM" src="https://user-images.githubusercontent.com/100246124/180657342-fba49814-93e5-4820-902b-0690c1b8c590.png">


## Machine Learning: [ML](https://github.com/ussyed11/Covid-19-Impact-on-Mental-Illness-in-USA/tree/main/ML/ML)

### Model selection [Link to ML Model Code](https://github.com/ussyed11/Covid-19-Impact-on-Mental-Illness-in-USA/blob/main/ML/ML/different_L_Regression.ipynb)

We ran some EDA to clean up our merged dataframe.  We used sklearn Corr() funtion to check the correlation coefficient between the proposed input features:

<img src="https://user-images.githubusercontent.com/100246124/180581062-20d727a0-f674-4516-bac2-63151ea4ecb2.png" width="600" height="400" >

X = features ('Tot_Cases', 'Toth_Deaths', '<High School', 'High School',
       'Some college or associates degree', 'Bachelors degree or higher',
       'Employed_2017', 'Unemployed_2017', 'Employed_2018', 'Unemployed_2018',
       'Employed_2019', 'Unemployed_2019', 'Employed_2020', 'Unemployed_2020',
       'Employed_2021', 'Unemployed_2021', 'Median_Household_Income_2020')
       
y = prediction/target(18_or_Older_AMI_Total)


Multivariate Regression Model 

![Screen Shot 2022-08-04 at 1 31 31 PM](https://user-images.githubusercontent.com/98566486/182914161-55ae64af-3393-474a-8494-5a67a10cd0c0.png)
![Screen Shot 2022-08-04 at 1 32 31 PM](https://user-images.githubusercontent.com/98566486/182914272-8a992bde-88e3-407c-b5fd-b13bd6afdded.png)

After fiting our data into a sklearn library's Multivariate Regression Model, our training score improved to 0.58 and testing score improved to 0.88. 

Then we use sklearn Grid Search CV to find the best performing model for our data set. We tried Random Forest Regressor,  Decision Tree Regressor, Ridge Regressor, and Gradient Boosting Regressor models from sklearn.

(![Screen Shot 2022-08-04 at 1 22 17 PM](https://user-images.githubusercontent.com/98566486/182912662-7f81b47d-b495-4374-8be4-d9e510330b13.png)

We train and test Gradient Boosting Regressor and Ridge Regressor models and found the following test results:

![Screen Shot 2022-08-04 at 1 25 08 PM](https://user-images.githubusercontent.com/98566486/182913741-e88a6e99-8ce3-4d31-a7d8-c12b064bef17.png)
![Screen Shot 2022-08-04 at 1 25 21 PM](https://user-images.githubusercontent.com/98566486/182913221-e9aa21aa-5710-4fe4-8760-ab7573b24fdf.png)

![Screen Shot 2022-08-04 at 1 25 39 PM](https://user-images.githubusercontent.com/98566486/182913237-c76edf8b-bc55-4356-860b-dabd1aca1a68.png)

## Conclusion
Our analysis confirmed our alternative hypothesis that any mental illness cases have been increased at least 20% nationwide compared to pre-pandemic increase of AMI cases (2017-2019).  Some states and Regions have seen significant increase in AMI cases during the last two years, however more data and research is needed to design an accurate machine learning predictors.
Due to lack of available published data for AMI, our machine learning model did not performed at our expected levels.  More data on AMI specific to each State’s county level with georaphical factors such as climate and population will be a good resource for future any mental illness cases analysis.

![Screen Shot 2022-08-04 at 12 58 07 PM](https://user-images.githubusercontent.com/98566486/182916298-6f2afafa-34d2-49b5-84b2-a19b6f4d8fc1.png)




## Tableau Story Dashboard: [Dashboard Rough Sketch](https://github.com/ussyed11/Covid-19-Impact-on-Mental-Illness-in-USA/tree/main/Dashboard)

We have our initial story/board created in tableau. We started with a drawn sketch before moving to tableau. 

<img width="500" height="400" alt="Screen Shot 2022-07-22 at 7 57 23 PM" src="https://user-images.githubusercontent.com/100246124/180581751-dc41cce8-cb74-406b-8a84-3802229d46c8.png">

## [AMI & Covid presentation](https://docs.google.com/presentation/d/1_zVBD73PyOs1N2mNhKlbCsAn87KuRsS9ESyjFUSO0Zo/edit?usp=sharing)


## [Link to Tableau Public Storyboard:](https://public.tableau.com/views/FinalProject_EZ_CODERS/AMITotalPerRegion?:language=en-US&publish=yes&:display_count=n&:origin=viz_share_link)
