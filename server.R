library(shiny)
library(ggplot2)
source("rankhospital.R")
source("rankhospital2.R")
source("rankall.R")
care <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
# Define a server for the Shiny app
shinyServer(function(input, output) {
      # Filter data based on selections
      output$table <- renderDataTable({
            data <- care[2:10]
            if (input$rank == "Best to Worst"){
                  if (input$State == "All"){
                        data<-rankall(outcome=input$condition,num="best")
                  } else {data<-rankhospital(state=input$State,outcome=input$condition,num="best")}
            }
            if (input$rank == "Worst to Best"){
                  if (input$State == "All"){
                        data<-rankall(outcome=input$condition,num="worst")
                  } else {data<-rankhospital(state=input$State,outcome=input$condition,num="worst")}      
            }
            
            data
      })
})