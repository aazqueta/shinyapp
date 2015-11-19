
library(shiny)

shinyServer(
  function(input, output){
   output$myname <- renderText(input$name)
    output$myage <- renderText(input$age)
    output$mygender <- renderText(input$gender)
    output$mysalary <- renderText(input$salary)
    output$mytime <- renderText(input$time)
    n <- eventReactive(input$goButton, {
      input$n
    })
    
    
    output$n <- renderText({
      0.1*input$time*input$salary
    })
  }
)