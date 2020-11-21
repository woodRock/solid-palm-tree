# Info: http://shiny.rstudio.com/

library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(

    titlePanel("h3jsr in R"),

    sidebarLayout(
        sidebarPanel(
            sliderInput("bins",
                        "Resolution:",
                        min = 1,
                        max = 15,
                        value = 10)
        ),

        mainPanel(
           plotOutput("distPlot")
        )
    )
)

# Define server logic required to draw a histogram
server <- function(input, output) {

    output$distPlot <- renderPlot({
        # generate bins based on input$bins from ui.R
        x    <- faithful[, 2]
        bins <- seq(min(x), max(x), length.out = input$bins + 1)

        # draw the histogram with the specified number of bins
        hist(x, breaks = bins, col = 'darkgray', border = 'white')
    })
}

# Run the application 
shinyApp(ui = ui, server = server)
