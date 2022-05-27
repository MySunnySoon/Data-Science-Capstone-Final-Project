#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Capstone: Predict the next word"),

    
    # Sidebar with a slider input for number of bins
    sidebarLayout(
      sidebarPanel(
        helpText("Enter a sentence"),
        textInput("input_text", "Sentence:",value = "last"),
        #actionButton("predict", "Click"),
        h5('Instructions'),
        helpText("This application guess the next word you input."),
        helpText("The word prediction algorithm use natural language processing to build a model 
                  using text extracted from blogs, news and twitter provided by SwiftKey.
                  Basically, we use N-grams which are continuous sequences of words 
                  in a document to predict the next words.")
      ),
      
        # Show a plot of the generated distribution
        mainPanel(
          h1("Next word Prediction"),
          #textOutput('next_word'),
          verbatimTextOutput("Guessing..."),
          h3(strong(code(textOutput('next_word')))),
          br(),
          br(),
          h4(tags$b('Bi-gram:')),
          textOutput('bigram'),
          br(),
          h4(tags$b('Tri-gram:')),
          textOutput('trigram'),
          br(),
          h4(tags$b('Quad-gram:')),
          textOutput('quagram'),
        )
    )
))
