library(UsingR)
data(galton)

shinyServer(
	function(input,output){
		output$newHist <- renderPlot ({
			hist(galton$child, xlab='Child Height', col='lightblue', main='Histogram')
			mu <- input$mu
			lines(c(mu,mu), c(0,200), col='red', lwd=5)
			mse <- mean((galton$child - mu) ^ 2)
			text(63,150, paste("mu = ", mu))
			text(63,160, paste("MSE = ", round(mse, 2)))			
		})		
	}	
)