library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("���������� ����� ���������� �� 3 ��������� � �������"),
  sidebarPanel(
    h3('������ ��������'),
    numericInput("num1", label = h5("1 �������"), value = 4),
    numericInput("num2", label = h5("2 �������"), value = 3),
    numericInput("num3", label = h5("3 �������"), value = 1),
    numericInput("num4", label = h5("�����"), value = 1),
    actionButton("start", "����������")
  ),
  mainPanel(
    h3('Обчислення'),
    textOutput("func"),
    textOutput("dyscr"),
    textOutput("first"),
    textOutput("second"),
    plotOutput('plot', width = "300px", height = "300px"))))
