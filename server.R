library(shiny)

shinyServer(
        function(input, output) {
                output$inputValue1 <- renderPrint({input$sp})
                output$inputValue2 <- renderPrint({input$dp})
                output$prediction <- renderPrint(({input$dp}*2+{input$sp})/3)
        }
)