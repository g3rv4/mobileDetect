library(shiny)

shinyServer(function(input, output) {
  output$isItMobile <- renderText({
    ifelse(input$isMobile, "You are on a mobile device", "You are not on a mobile device")
  })
})
