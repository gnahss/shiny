library(shiny)

shinyUI(fluidPage(
  titlePanel("FAANG"),
  # Sidebar with a slider input for dates
  sidebarLayout(
    sidebarPanel(
      selectInput('counter', 'Select stock counter:',
                  choices=c('Facebook','Apple','Amazon','Netflix','Google')),
      sliderInput("dates","Time period:",
                  min = as.Date('2005-01-01', '%Y-%m-%d'),
                  max = Sys.Date()-1,
                  value = c(as.Date('2005-01-01', '%Y-%m-%d'),Sys.Date()-1)
      ),
      p('Note: Price history of Facebook and Google starts in May 2012 and March 2014 respectively') 
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("priceChart"),
       h4('Start price:'),
       textOutput('p1'),
       h4('End price:'),
       textOutput('p2'),
       h4('Rate of return (%):'),
       textOutput('return')
    )
  )
))
