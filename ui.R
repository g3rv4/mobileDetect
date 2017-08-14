library(shiny)

mobileDetect <- function(inputId, value = 0) {
  tagList(
    singleton(tags$head(tags$script(src = "js/mobile.js"))),
    tags$input(id = inputId,
               class = "mobile-element",
               type = "hidden")
  )
}

shinyUI(fluidPage(
  titlePanel("Are you on a mobile device?"),
  
  mobileDetect('isMobile'),
  textOutput('isItMobile')
))
