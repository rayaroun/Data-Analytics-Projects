'''

Deaths table 
`data-analysis-projects.CovidExample.covid-data-deaths`

Vaccincation table 
`data-analysis-projects.CovidExample.covid-data-vaccinationations`

'''

--1. Selecting the data that we are going to be using

select location, date, total_cases, new_cases, total_deaths, population
from `data-analysis-projects.CovidExample.covid-data-deaths`
order by 1,2

Output - 

[
  {
    "location": "Afghanistan",
    "date": "2020-02-24",
    "total_cases": "5",
    "new_cases": "5",
    "total_deaths": null,
    "population": "39835428"
  },
  {
    "location": "Afghanistan",
    "date": "2020-02-25",
    "total_cases": "5",
    "new_cases": "0",
    "total_deaths": null,
    "population": "39835428"
  },
  {
    "location": "Afghanistan",
    "date": "2020-02-26",
    "total_cases": "5",
    "new_cases": "0",
    "total_deaths": null,
    "population": "39835428"
  },
  {
    "location": "Afghanistan",
    "date": "2020-02-27",
    "total_cases": "5",
    "new_cases": "0",
    "total_deaths": null,
    "population": "39835428"
  },
  {
    "location": "Afghanistan",
    "date": "2020-02-28",
    "total_cases": "5",
    "new_cases": "0",
    "total_deaths": null,
    "population": "39835428"
  }
]

-- 2. Looking at total cases vs total deaths

select location, date, total_cases, new_cases, total_deaths, ( total_deaths/total_cases ) * 100 as DeathPercentage
from `data-analysis-projects.CovidExample.covid-data-deaths`
order by 1,2


-- 2.1 For Canada

select location, date, total_cases, new_cases, total_deaths, ( total_deaths/total_cases ) * 100 as DeathPercentage
from `data-analysis-projects.CovidExample.covid-data-deaths`
where location like 'Canada'
order by 1,2 DESC


[
  {
    "location": "Canada",
    "date": "2021-09-12",
    "total_cases": "1549841",
    "new_cases": "2774",
    "total_deaths": "27247",
    "DeathPercentage": "1.7580513097795194"
  },
  {
    "location": "Canada",
    "date": "2021-09-11",
    "total_cases": "1547067",
    "new_cases": "913",
    "total_deaths": "27235",
    "DeathPercentage": "1.7604279581944413"
  },
  {
    "location": "Canada",
    "date": "2021-09-10",
    "total_cases": "1546154",
    "new_cases": "4599",
    "total_deaths": "27230",
    "DeathPercentage": "1.761144103368746"
  },
  {
    "location": "Canada",
    "date": "2021-09-09",
    "total_cases": "1541555",
    "new_cases": "4261",
    "total_deaths": "27190",
    "DeathPercentage": "1.7638034322486063"
  },
  {
    "location": "Canada",
    "date": "2021-09-08",
    "total_cases": "1537294",
    "new_cases": "3705",
    "total_deaths": "27164",
    "DeathPercentage": "1.7670009770414767"
  },
  {
    "location": "Canada",
    "date": "2021-09-07",
    "total_cases": "1533589",
    "new_cases": "9921",
    "total_deaths": "27122",
    "DeathPercentage": "1.7685312036014862"
  },
  {
    "location": "Canada",
    "date": "2021-09-06",
    "total_cases": "1523668",
    "new_cases": "1043",
    "total_deaths": "27073",
    "DeathPercentage": "1.7768306481464466"
  },
  {
    "location": "Canada",
    "date": "2021-09-05",
    "total_cases": "1522625",
    "new_cases": "1733",
    "total_deaths": "27072",
    "DeathPercentage": "1.7779821032755931"
  }
]