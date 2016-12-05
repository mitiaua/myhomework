library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Обчислення площі трикутника за 3 сторонами і радіусом"),
  sidebarPanel(
    h3('Введіть значення'),
    numericInput("num1", label = h5("1 сторона"), value = 4),
    numericInput("num2", label = h5("2 сторона"), value = 3),
    numericInput("num3", label = h5("3 сторона"), value = 1),
    numericInput("num4", label = h5("Радіус"), value = 1),
    actionButton("start", "обрахувати")
  ),
  mainPanel(
    h3('РћР±С‡РёСЃР»РµРЅРЅСЏ'),
    textOutput("func"),
    textOutput("dyscr"),
    textOutput("first"),
    textOutput("second"),
    plotOutput('plot', width = "300px", height = "300px"))))
