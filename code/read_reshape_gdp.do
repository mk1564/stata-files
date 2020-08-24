** comments

import delimited "https://raw.githubusercontent.com/korenmiklos/dc-economics-data/master/data/web/gdp.csv", varnames(1) bindquotes(strict) encoding("utf-8") clear
reshape long gdp, i(countrycode ) j(year)
rename gdp gdp_per_capita
label variable gdp_per_capita "GDP per capita (USD?)"
save "../data/derived/gdp_per_capita.dta", replace
