library(googleVis)
library(RCurl)
library(shiny)

CSVFile <- input$file
dat <- read.csv(CSVFile$datapath, header = TRUE,
             	sep = ',', quote = '"')

shinyServer(function(input, output) {
	output$gvis <- renderGvis({
    myData <- subset(dat, 
   					gvisGeoChart(myData,
                	locationvar="country", colorvar="num_investiments",
                	options=list(region="world", 
                    width=500, height=400,                              											colorAxis="{colors:['#FFFFFF', '#0000FF']}"
                    ))     
  	)})
		
})
 