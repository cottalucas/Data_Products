shinyUI(fluidPage(
  titlePanel("Crunch Base Analysis"),
  sidebarLayout(
    sidebarPanel(
    
      fileInput('file', 'Choose file to upload',
                accept = c(
                  'text/csv',
                  'text/comma-separated-values',
                  'text/tab-separated-values',
                  'text/plain',
                  '.csv',
                  '.tsv'
                )
      ),
      tags$hr()
      
    ),
    mainPanel(
    	htmlOutput("gvis")
    )
  )
))
