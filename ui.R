library(shiny);
shinyUI(pageWithSidebar(
  headerPanel("Predict the next word(s)"),
  sidebarPanel(
    textInput("text",label = h3("Type your phrase here"), value = ""),
    sliderInput("predictions", "How many predictions do you like to see ?",
                min = 1, max = 3, value = 1, step = 1),
    submitButton('Submit'),
    br(),
    h4("Instruction :"),
    h6("Type an ENGLISH word/phrase. Use the slider to choose how many predictions you would like to see, and click the submit button."),
    h6("Although not required by the grading instruction, this App is also capable of predicting the subsequent word after the first word. Just click on the tab to view the next two words."),
    h6("The word prediction was performed using Stupid Backoff Algorithm, using a corpus of text data generated from the Coursera-Swiftkey dataset provided for this course. ")
  ),
  mainPanel(
    tabsetPanel (
      tabPanel('The next word could be',
               dataTableOutput("word1")),
      tabPanel('The next two words could be',
               dataTableOutput("word2"))
      )
  )
))
