library(shiny)
shinyServer(
  function(input, output) {
    output$func<-renderText({
      input$start
      if (input$num2 >= 0) {
        paste0('Функція: ',input$num1,'*', input$num2,'*',input$num3, '/', '(', input$num4, '*', '4', ')' )
     
      }
        })
    output$dyscr<- renderText({
      paste0('Площа трикутника за трьома сторонам і радіусом описаного кола = ',
             (input$num1*input$num2*input$num3/(input$num4*4)))
    })})
