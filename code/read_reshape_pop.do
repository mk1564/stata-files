** comment

import delimited "https://raw.githubusercontent.com/korenmiklos/dc-economics-data/master/data/web/pop.csv", varnames(1) bindquotes(strict) encoding("utf-8") clear
reshape long pop, i(countrycode ) j(year)
label variable pop "population"
save "../data/derived/pop.dta", replace
