
shinyUI(fluidPage(
  
  headerPanel(title = "Welcome to the Pension Calculator"),
  sidebarLayout(
    sidebarPanel(("Enter the personal information"),
                 textInput("name", "Enter your name", ""),
                 numericInput("age", "Enter your age", ""),
                 radioButtons("gender", "Select the gender", list("Male", "Female"), ""),
                 numericInput("salary", "Enter your average expected salary per year (thousand $)", ""),
                 sliderInput("time", "Years of credited Service", min=0, max=50, value=40, step=5)

    ),
                            
    
    
    mainPanel(
      ("Personal Information and result as 1000 $"),
      
              textOutput("myname"),
              textOutput("myage"),
              textOutput("mygender"),
              textOutput("mysalary"),
              textOutput("mytime"),
              verbatimTextOutput("n")
     
              ) 
              )
))


