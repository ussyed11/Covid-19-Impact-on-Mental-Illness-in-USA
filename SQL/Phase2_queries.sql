-- Check the tables
SELECT * FROM AMI_State_Totals_2017_to_2021;
SELECT * FROM Covid_Totals_2017_to_2021;
SELECT * FROM Employment_Totals_2017_to_2021;
SELECT * FROM Median_Income_Total_2017_to_2021;

-- Create a new table by joining AMI_State_Totals and COVID_Totals
FROM AMI_State_Totals_2017_to_2021 AS AMI
	LEFT JOIN Covid_Totals_2017_to_2021  AS Covid
		ON (AMI."Year" = Covid."Year")