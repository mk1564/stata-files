** comments
// local indicator gdp
local indicator pop
// local long_name gdp_per_capita
local long_name population
// local label "GDP per capita (USD?)"
local label "Population"

import delimited "https://raw.githubusercontent.com/korenmiklos/dc-economics-data/master/data/web/`indicator'.csv", varnames(1) bindquotes(strict) encoding("utf-8") clear
reshape long `indicator', i(countrycode ) j(year)
rename `indicator' `long_name'
label variable `long_name' "`label'"
save "../data/derived/`long_name'.dta", replace
