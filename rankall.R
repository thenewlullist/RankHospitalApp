rankall <- function(outcome, num = "best") {
## Read outcome data
## Check that state and outcome are valid
## For each state, find the hospital of the given rank
## Return a data frame with the hospital names and the
## (abbreviated) state name
dfall <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
      source("rankhospital2.R")
      stateList <- sort(unique(dfall$State))
      test<-rankhospital2("AK", outcome=outcome, num = num)
for (i in seq_along(stateList[-1])) {
     test[i,]<-rankhospital2(state=(stateList[i]), outcome=outcome, num=num)}

      print(test)
}
