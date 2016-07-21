library(shiny)

shinyUI(
        navbarPage("Mean arterial pressure estimator",
        tabPanel("The Estimator",          
        pageWithSidebar(
        headerPanel("Mean arterial pressure estimator"),
        sidebarPanel(
                numericInput('sp', 'Systolic arterial pressure, mmHg', 120, min = 10, max = 1000, step = 1),
                numericInput('dp', 'Diastolic arterial pressure, mmHg', 80, min = 10, max = 1000, step = 1),
                submitButton('Submit')
                    ),
        
        mainPanel(
                h3('Your estimated mean arterial pressure'),
                h4('You entered SP'),
                verbatimTextOutput("inputValue1"),
                h4('And DP'),
                verbatimTextOutput("inputValue2"),
                h4('Which resulted in an estimated mean arterial pressure of '),
                verbatimTextOutput("prediction")
                )
                        )
                ),
        tabPanel("About",
                mainPanel(
                        h3('About'),
                        h5('This app uses the formular: (2*diastolic arterial pressure + systolic arterial pressure)/3 = mean arterial pressure, to estimate the mean arterial pressure'),
                        h5('To get your estimate, simply put in the systolic and diastolic arterual pressure on the mean arterial pressure tab and hit submit!')
                        )
        )
                )
        )
