RankHospitalApp
===============
#####Introduction
Exponentially growing Health Insurance premiums are a primary factor behind patents seeking alternative opinions 
and reviews online. An entire sub-branch of Medical Reference has grown to accomodate this need with recognized 
companies like WebMd leading this trend. As part of an ongoing open data initiative among global buisinesses and 
governments, [data.medicare.gov](https://data.medicare.gov/) releases data sets for Hospital comparison. With more than 4,000 
Medicare-certified hospitals reviewed nationwide, finding relevant information in the large datasets can be 
challenging. RankHospitalApp is a simple demonstration of creating a data table with drop down toolbars for easy 
reference of the Hospital addresses ranked in the outcome-of-care-measures.csv dataset which can be downloaded 
from this repo or on the aforementioned website. Hopefully, with more sophisticated data apps of this design 
open to the public, crucial Medicare data will be more viewable to the average patient saving time, expenses, 
and (possibly) lives.

#####The Dataset
`outcome-of-care-measures.csv` has many measurements relating to 30-day mortality and readmission rates for three
common ER conditions: heart attack, heart failure, and pneumonia. If desired, an optional codebook for all the 
variables: `Hospital_Revised_Flatfiles.pdf` is available on this repo.

#####RankHospitalApp Options
There are three primary selections to choose from: State, Condition, and Ranking Order.

`State` has postal abbreviations of all 50 U.S. states to search from. Selecting 'All' gives the single 'best' 
or 'worst' hospital of each State.

`Condition` 'heart attack', 'heart failure', and 'pneumonia' selects which condition

`Ranking From` 'Best to Worst' and 'Worst to Best'

Other options include how many records per page, sort toggling of all nine columns, and a search bar.

#####Notes
There were a few reasons why I decided not to include the 30 day mortality figures in the chart. Primarily 
because the additional factors included lower and upper estimations, comparison with national average, and 
others which would have put more columns into the final table. I judged that for the patients in question, the 
most neccessary information, aside from the ranking, were the addresses.
#####References
Essential sources for this App include the Basic Datatable App from RStudio, shared in Github by [garrettgman](https://github.com/rstudio/shiny-examples/tree/master/030-basic-datatable)
and [data.medicare.gov](https://data.medicare.gov/data/hospital-compare). R Ranking functions in [thenewlullist](https://github.com/thenewlullist/RankHospitalApp) repo. 
