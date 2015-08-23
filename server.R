meanfun <- function(gearnum) mean(mtcars[which(mtcars$gear==gearnum),"mpg"])

shinyServer(
    function(input,output){
        output$inputValue <- renderPrint({input$gear})
        output$prediction <- renderPrint({meanfun(input$gear)})
    })

 
