shinyUI(
	pageWithSidebar(
	
	#
	#Title
	headerPanel("Diabetes Prediction"),
	
	#
	#Inputs
	sidebarPanel(
		numericInput('glucose', 'Glucose mg/dl', 90, min=20, max=200, step=5),
		submitButton('Go')
	),
	
	#
	#Showing the results
	mainPanel(
		h3('Results of prediction'),
		h4('You entered: '),
			verbatimTextOutput("inputValue"),
		h4('Which results on: '),
			verbatimTextOutput("prediction")
		)
	)
)