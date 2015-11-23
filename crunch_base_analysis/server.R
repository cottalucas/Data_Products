library(googleVis)
library(RCurl)
library(shiny)

#Choosing the file
#CSVFile <- input$file
#dat <- read.csv(CSVFile$datapath, header = TRUE,
#             	sep = ',', quote = '"')

#Different method
url <- "https://github.com/cottalucas/Data_Products/blob/master/crunch_base_analysis/crunchbase_export.csv"

dat <- getURL(url, ssl.verifypeer=0L, followlocation=1L)

dat <- read.csv(text=dat)

#The input generate an Geochart with the possibiliy of relate the area with the number and value of investiments 
shinyServer(function(input, output) {
	output$gvis <- renderGvis({
    myData <- subset(dat, 
   			gvisGeoChart(myData,
                	locationvar="country", colorvar="num_investiments_2",
                	options=list(region="world", 
                    	width=500, height=400,                              											colorAxis="{colors:['#FFFFFF', '#0000FF']}"
                    ))     
  	)})
		
})
 
