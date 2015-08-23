shinyUI(pageWithSidebar(
    headerPanel("How average MPG vary with different gear"),
    sidebarPanel(
        h3("Documention - Getting Started"),
        h4("This is a simple App to calculate the average MPG of cars with the selected gear. This is taken from the mtcars dataset. You just have to vary the no. of gears and click Submit to see the result."),
        numericInput('gear','No of gear',3,min=3,max=5,step=1),
        submitButton('Submit')),
    mainPanel(
        h3('Results'),
        h4('You entered'),
        verbatimTextOutput('inputValue'),
        h4('Which resulted in an average MPG of'),
        verbatimTextOutput('prediction'))))
    
