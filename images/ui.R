shinyUI(
	pageWithSidebar(
		headerPanel("Ex plot"),
		sidebarPanel(
			sliderInput('mu', 'Guess at the mean', value=70, min=64, max=72, step=0.05,)
		),
	mainPanel(
			plotOutput('newHist')
		)
	)	
)