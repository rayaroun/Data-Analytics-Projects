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


-- Looking at the total deaths vs population


select location, date, total_cases, new_cases, population, ( total_deaths/population ) * 100 as DeathPercentage
from `data-analysis-projects.CovidExample.covid-data-deaths`
where location like 'Canada'
order by 1,2 DESC


[
  {
    "location": "Canada",
    "date": "2021-09-12",
    "total_cases": "1549841",
    "new_cases": "2774",
    "population": "38067913",
    "DeathPercentage": "0.07157471437953533"
  },
  {
    "location": "Canada",
    "date": "2021-09-11",
    "total_cases": "1547067",
    "new_cases": "913",
    "population": "38067913",
    "DeathPercentage": "0.07154319176887895"
  },
  {
    "location": "Canada",
    "date": "2021-09-10",
    "total_cases": "1546154",
    "new_cases": "4599",
    "population": "38067913",
    "DeathPercentage": "0.07153005734777212"
  },
  {
    "location": "Canada",
    "date": "2021-09-09",
    "total_cases": "1541555",
    "new_cases": "4261",
    "population": "38067913",
    "DeathPercentage": "0.07142498197891751"
  },
  {
    "location": "Canada",
    "date": "2021-09-08",
    "total_cases": "1537294",
    "new_cases": "3705",
    "population": "38067913",
    "DeathPercentage": "0.07135668298916202"
  }
]


-- Looking at the total cases vs population



select location, date, total_cases, new_cases, population, ( total_cases / population ) * 100 as DeathPercentage
from `data-analysis-projects.CovidExample.covid-data-deaths`
where location like 'Canada'
order by 1,2 DESC


[
  {
    "location": "Canada",
    "date": "2021-09-12",
    "total_cases": "1549841",
    "new_cases": "2774",
    "population": "38067913",
    "DeathPercentage": "4.071252868524733"
  },
  {
    "location": "Canada",
    "date": "2021-09-11",
    "total_cases": "1547067",
    "new_cases": "913",
    "population": "38067913",
    "DeathPercentage": "4.063965891694667"
  },
  {
    "location": "Canada",
    "date": "2021-09-10",
    "total_cases": "1546154",
    "new_cases": "4599",
    "population": "38067913",
    "DeathPercentage": "4.0615675464005605"
  }
]

-- Looking at countries with highest infection reates compared to population


select location,  population, MAX(total_cases) as highestInfectionCount, max(( total_cases/population )*100) as percentagePopulation
from `data-analysis-projects.CovidExample.covid-data-deaths`
where location like 'Canada'
group by location, population
order by 1,2 DESC

[
  {
    "location": "Seychelles",
    "population": "98910",
    "highestInfectionCount": "20593",
    "percentagePopulation": "20.819937316752604"
  },
  {
    "location": "Andorra",
    "population": "77354",
    "highestInfectionCount": "15083",
    "percentagePopulation": "19.498668459291054"
  },
  {
    "location": "Montenegro",
    "population": "628051",
    "highestInfectionCount": "121908",
    "percentagePopulation": "19.41052557833679"
  },
  {
    "location": "San Marino",
    "population": "34010",
    "highestInfectionCount": "5373",
    "percentagePopulation": "15.798294619229639"
  },
  {
    "location": "Czechia",
    "population": "10724553",
    "highestInfectionCount": "1683179",
    "percentagePopulation": "15.694630815848457"
  },
  {
    "location": "Bahrain",
    "population": "1748295",
    "highestInfectionCount": "273743",
    "percentagePopulation": "15.657712228199475"
  },
  {
    "location": "Maldives",
    "population": "543620",
    "highestInfectionCount": "82822",
    "percentagePopulation": "15.235274640373792"
  },
  {
    "location": "Georgia",
    "population": "3979773",
    "highestInfectionCount": "580869",
    "percentagePopulation": "14.595530951137162"
  },
  {
    "location": "Israel",
    "population": "8789776",
    "highestInfectionCount": "1172253",
    "percentagePopulation": "13.336551466157953"
  },
  {
    "location": "Slovenia",
    "population": "2078723",
    "highestInfectionCount": "276174",
    "percentagePopulation": "13.285752839603928"
  },
  {
    "location": "Cyprus",
    "population": "888005",
    "highestInfectionCount": "116209",
    "percentagePopulation": "13.086525413708255"
  },
  {
    "location": "United States",
    "population": "332915074",
    "highestInfectionCount": "40955201",
    "percentagePopulation": "12.301996574657956"
  }
]



-- Showing the countries with the highest death count for the population

select location,  population, MAX(total_deaths) as highestDeathCount, max(( total_deaths/population )*100) as percentageDeath
from `data-analysis-projects.CovidExample.covid-data-deaths`
-- where location like 'Canada'
where continent is not null
group by location, population
order by percentageDeath desc