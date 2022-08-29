Select *
From [dbo].['Table 1$'];

--Looking at Cases per million

Select location,population, total_cases_per_million, new_cases_per_million,
(new_cases_per_million/total_cases_per_million)*100 as CasePercentage
From [dbo].['Table 1$']
Where location like 'united states';

--Looking at Total of Cases and Median Age

Select continent, population, total_cases, new_cases, population, median_age
From [dbo].['Table 1$'];

--Looking at Cardio Death Percentages

Select location, date, population, total_cases, total_deaths, cardiovasc_death_rate, (cardiovasc_death_rate/total_deaths)*100 as CardioDeaths
From [dbo].['Table 1$']
Where location like '%states%'
order by 1,2;


--Looking at ICU Patients vs Hospital Patients

Select continent, total_cases, hosp_patients, icu_patients
From [dbo].['Table 1$']
Where total_cases IS Not Null
Order by 2,3;

