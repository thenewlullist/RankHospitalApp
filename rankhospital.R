rankhospital <- function(state, outcome, num = "best") {
## Read outcome data
## Check that state and outcome are valid
## Return hospital name in that state with the given rank
## 30-day death rate
condition <- c("heart attack", "heart failure", "pneumonia")
df <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
if(!state %in% df$State) stop("invalid state")
if(!outcome %in% condition) stop("invalid outcome")

specific.state <- subset(df, State== state)
specific.state[specific.state=="Not Available"] <- NA

if (outcome == "heart attack") {
specific.state[,11] <- as.numeric(specific.state[,11])
    specific.state <- subset(specific.state,!is.na(specific.state[,11]))
    row <- nrow(specific.state):1
    sorted.state <- specific.state[order(specific.state[,11],specific.state[,2]),]
    
    if(num == "best"){
      which.hospital <- sorted.state[,2:10]
    } else {if (num == "worst"){
        which.hospital <- sorted.state[row,2:10]
}}
}else if (outcome == "heart failure") {
      specific.state[,17] <- as.numeric(specific.state[,17])
      specific.state <- subset(specific.state,!is.na(specific.state[,17]))
      row <- nrow(specific.state):1
      sorted.state <- specific.state[order(specific.state[,17],specific.state[,2]),]
      
      if(num == "best"){
            which.hospital <- sorted.state[,2:10]
      } else {if (num == "worst"){
            which.hospital <- sorted.state[row,2:10]
      }}
}else{
      specific.state[,23] <- as.numeric(specific.state[,23])
      specific.state <- subset(specific.state,!is.na(specific.state[,23]))
      row <- nrow(specific.state):1
      sorted.state <- specific.state[order(specific.state[,23],specific.state[,2]),]
      
      if(num == "best"){
            which.hospital <- sorted.state[,2:10]
      } else {if (num == "worst"){
            which.hospital <- sorted.state[row,2:10]
      }}}
print(which.hospital)
}