library(shiny)
library(datasets)

# Server -Shiny app
shinyServer(function(input, output) {
  
  # Fill the plot panel
  
  title="Frequency vs Consumption"

  output$mpgplot <- renderPlot({
    title=paste("Mean (in MPG): ",mean(mtcars$mpg[mtcars$cyl==input$CylNB]))
     hist(mtcars$mpg[mtcars$cyl==input$CylNB], main=title, xlab="Miles per Gallon", col=input$CylNB)    
 
  })
})
