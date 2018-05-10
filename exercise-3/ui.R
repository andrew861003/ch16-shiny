# UI for scatterplot
library(shiny)

# Get a vector of column names (from `mpg`) to use as select inputs
select_values <- colnames(mpg)

# Create a shinyUI with a `fluidPage` layout
shinyUI(fluidPage(
  # A page header
h1("Scatter plots"),
  
  # Add a select input for the x variable
selectInput("x_var", label = "Please choose x", choices = select_values),
  
  # Add a select input for the y variable
selectInput("y_var", label = "Please enter y", choices = select_values),

  # Add a sliderInput to set the size of each point
sliderInput("size_choice", label = "Point sizes", min = 1 , max = 10, value = 1),

  # Add a selectInput that allows you to select a color from a list of choices
selectInput("color_choice", label = "Choose color", choices = c("blue", "red", "green")),


  # Plot the output with the name "scatter"
plotOutput("scatter")
)
)