library(shiny)
# mtcar dataset in the datasets package
library(datasets)
doc="Documentation:     The purpose of this application is to provide insight about how the number of cylinder correlate to consumption,"
doc=paste(doc,"by showing graphically the pattern from a database of vehicles")
doc=paste(doc,"*** To use this application select the number of cylinders in the drop down list.")
doc=paste(doc,"This application will calculate the frequency of consumption for ranges of consumption in miles per gallon")
doc=paste(doc," and display a histogram of the result.")
doc=paste(doc,"*** Source: ")
doc=paste(doc,"The data was extracted from the 1974 Motor Trend US magazine")

# Define the overall UI
shinyUI(
  fluidPage(    
    #Title
    titlePanel("Car consumptions and number of cylinders"),  
    # sidebar
    sidebarLayout(      
      # Define the sidebar with one input
      sidebarPanel(
        selectInput("CylNB", "Number of Cylinders:", choices= c(4,6,8), selected= 4),
     helpText(doc)
      ),   
      # Plot panel
      mainPanel(
        plotOutput("mpgplot")  
      )     
    )
  )
)
