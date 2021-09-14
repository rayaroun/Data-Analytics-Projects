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


[
  {
    "location": "Peru",
    "population": "33359415",
    "highestDeathCount": "198764",
    "percentageDeath": "0.595825796105837"
  },
  {
    "location": "Hungary",
    "population": "9634162",
    "highestDeathCount": "30086",
    "percentageDeath": "0.312284555729912"
  },
  {
    "location": "Bosnia and Herzegovina",
    "population": "3263459",
    "highestDeathCount": "9995",
    "percentageDeath": "0.3062701262678649"
  },
  {
    "location": "North Macedonia",
    "population": "2082661",
    "highestDeathCount": "6259",
    "percentageDeath": "0.30052898671459255"
  },
  {
    "location": "Montenegro",
    "population": "628051",
    "highestDeathCount": "1800",
    "percentageDeath": "0.28660092890545513"
  }
]



-- Countries with highest death counts 

select location,  population, MAX(total_deaths) as highestDeathCount--, max(( total_deaths/population )*100) as percentageDeath
from `data-analysis-projects.CovidExample.covid-data-deaths`
-- where location like 'Canada'
where continent is not null
group by location, population
order by highestDeathCount desc

[
  {
    "location": "United States",
    "population": "332915074",
    "highestDeathCount": "659970"
  },
  {
    "location": "Brazil",
    "population": "213993441",
    "highestDeathCount": "586851"
  },
  {
    "location": "India",
    "population": "1393409033",
    "highestDeathCount": "442874"
  },
  {
    "location": "Mexico",
    "population": "130262220",
    "highestDeathCount": "267748"
  },
  {
    "location": "Peru",
    "population": "33359415",
    "highestDeathCount": "198764"
  },
  {
    "location": "Russia",
    "population": "145912022",
    "highestDeathCount": "189319"
  }
]


-- Breaking things by continent 

select location, MAX(total_deaths) as highestDeathCount--, max(( total_deaths/population )*100) as percentageDeath
from `data-analysis-projects.CovidExample.covid-data-deaths`
-- where location like 'Canada'
where continent is null
group by location
order by highestDeathCount desc


[
  {
    "location": "World",
    "highestDeathCount": "4630613"
  },
  {
    "location": "Europe",
    "highestDeathCount": "1195692"
  },
  {
    "location": "South America",
    "highestDeathCount": "1140707"
  },
  {
    "location": "Asia",
    "highestDeathCount": "1081247"
  },
  {
    "location": "North America",
    "highestDeathCount": "1008217"
  },
  {
    "location": "European Union",
    "highestDeathCount": "760573"
  },
  {
    "location": "Africa",
    "highestDeathCount": "202878"
  },
  {
    "location": "Oceania",
    "highestDeathCount": "1857"
  },
  {
    "location": "International",
    "highestDeathCount": "15"
  }
]



-- Global numbers counting the cummulative new cases and deaths and getting the percentage 

select date, SUM(new_cases), SUM(new_deaths), (Sum( new_deaths ) / Sum( total_cases ) )* 100 as percentageNewDeaths
from `data-analysis-projects.CovidExample.covid-data-deaths`
where continent is not null
group by date


[

	{
    "date": "2020-01-23",
    "totalNewCases": "98",
    "totalNewDeaths": "1",
    "percentageNewDeaths": "0.15267175572519084"
  },
  {
    "date": "2020-01-24",
    "totalNewCases": "286",
    "totalNewDeaths": "8",
    "percentageNewDeaths": "0.8501594048884166"
  },
  {
    "date": "2020-01-25",
    "totalNewCases": "492",
    "totalNewDeaths": "16",
    "percentageNewDeaths": "1.1165387299371947"
  },
  {
    "date": "2020-01-26",
    "totalNewCases": "685",
    "totalNewDeaths": "14",
    "percentageNewDeaths": "0.6610009442870632"
  },
  {
    "date": "2020-01-27",
    "totalNewCases": "809",
    "totalNewDeaths": "26",
    "percentageNewDeaths": "0.8882815169115136"
  },
  {
    "date": "2020-01-28",
    "totalNewCases": "2651",
    "totalNewDeaths": "49",
    "percentageNewDeaths": "0.8784510577267838"
  },
  {
    "date": "2020-01-29",
    "totalNewCases": "589",
    "totalNewDeaths": "2",
    "percentageNewDeaths": "0.03243067942273391"
  }

]




-- Joining the tables and looking at Total population vs Vaccinations


select dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations,
SUM( vac.new_vaccinations ) over (PARTITION  by dea.location order by dea.location, dea.date ) as RollingPeopleVaccinated
from
`data-analysis-projects.CovidExample.covid-data-deaths` dea
join `data-analysis-projects.CovidExample.covid-data-vaccinationations` vac
on dea.location = vac.location
and dea.date = vac.date
where dea.continent is not null
order by 2,3




-- finding the number of people vaccinated 


With PopVsVac
as
(

select dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations,
SUM( vac.new_vaccinations ) over (PARTITION  by dea.location order by dea.location, dea.date ) as RollingPeopleVaccinated
from
`data-analysis-projects.CovidExample.covid-data-deaths` dea
join `data-analysis-projects.CovidExample.covid-data-vaccinationations` vac
on dea.location = vac.location
and dea.date = vac.date
where dea.continent is not null
order by 2,3


)
select *, (RollingPeopleVaccinated/population)*100
 from PopVsVac



-- Finding out the percentage of people vaccinated in India. 200% means everyone is vaccinated. 

With PopVsVac
as
(

select dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations,
SUM( vac.new_vaccinations ) over (PARTITION  by dea.location order by dea.location, dea.date ) as RollingPeopleVaccinated
from
`data-analysis-projects.CovidExample.covid-data-deaths` dea
join `data-analysis-projects.CovidExample.covid-data-vaccinationations` vac
on dea.location = vac.location
and dea.date = vac.date
where dea.continent is not null
order by 2,3


),

percenVac 
as
(
select *, (RollingPeopleVaccinated/population)*100 as PercentageVaccinated
from PopVsVac
where location = 'India'
)

select * from percenVac 
order by PercentageVaccinated DESC



[
  {
    "continent": "Asia",
    "location": "India",
    "date": "2021-09-12",
    "population": "1393409033",
    "new_vaccinations": "6849164",
    "RollingPeopleVaccinated": "670993877",
    "PercentageVaccinated": "48.154839039284454"
  },
  {
    "continent": "Asia",
    "location": "India",
    "date": "2021-09-11",
    "population": "1393409033",
    "new_vaccinations": "9314241",
    "RollingPeopleVaccinated": "664144713",
    "PercentageVaccinated": "47.66329895035207"
  },
  {
    "continent": "Asia",
    "location": "India",
    "date": "2021-09-10",
    "population": "1393409033",
    "new_vaccinations": "3204492",
    "RollingPeopleVaccinated": "654830472",
    "PercentageVaccinated": "46.99484907099781"
  },
  {
    "continent": "Asia",
    "location": "India",
    "date": "2021-09-09",
    "population": "1393409033",
    "new_vaccinations": "10359429",
    "RollingPeopleVaccinated": "651625980",
    "PercentageVaccinated": "46.76487410140106"
  }
]



