library(shiny)
# Load the ggplot2 package which provides
# the 'mpg' dataset.
library(ggplot2)
care <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
# Define the overall UI
shinyUI(navbarPage("+",
      tabPanel("RankHospitalApp",fluidPage(
            titlePanel("Rank National Hospitals"),
            # Create a new Row in the UI for selectInputs
            fluidRow(
                  column(4,
                         selectInput("State",
                                     "State:",
                                     c("All",
                                       unique(as.character(care$State))))
                  ),
                  column(4,
                         selectInput("condition",
                                     "Condition:",
                                     c("heart attack", "heart failure", "pneumonia"))
                  ),
                  column(4,
                         selectInput("rank",
                                     "Ranking From:",
                                     c("Best to Worst","Worst to Best"))
                  )
            ),
            # Create a new row for the table.
            fluidRow(
                  dataTableOutput(outputId="table")
            )
      )
),
      tabPanel("Documentation")
)
)

