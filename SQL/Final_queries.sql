-- Check the tables
SELECT * FROM AMI_State_Totals_2017_to_2021;
SELECT * FROM Covid_Totals_2017_to_2021;
SELECT * FROM Educational_Attainment_Totals_2017_to_2021;
SELECT * FROM Employment_Totals_2017_to_2021;
SELECT * FROM Median_Income_Totals_2017_to_2021;

-- Create a new table by joining all tables
FROM AMI_State_Totals_2017_to_2021 AS AMI
	LEFT JOIN Covid_Totals_2017_to_2021 AS Covid
		ON (AMI."Year" = Covid."Year")
	LEFT JOIN Educational_Attainment_Totals_2017_to_2021 AS Education
		ON (AMI."Year" = Education."Year")
	LEFT JOIN Employment_Totals_2017_to_2021 AS Employment
		ON (AMI."Year" = Employment."Year")
	LEFT JOIN Median_Income_Totals_2017_to_2021 AS Income
		ON (AMI."Year" = Income."Year");