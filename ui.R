# UI for app
shinyUI(pageWithSidebar(
    # title
    headerPanel("Evaluate your Business Idea"),
    
    
    #input
    sidebarPanel
    (
        h6("You should rate from 0 to 10, with 0 being extremely unattractive, and 10 being extremely attractive."),
        
        textInput("idea", "What is your market idea?", value = ""),
        numericInput("id1", "Urgency: How badly do people need this right now?", 0, min=0, max=10, step=1),
        numericInput("id2", "Market size: How many people would purchase this?", 0, min=0, max=10, step=1),
        numericInput("id3", "Pricing Potential: What's the highest price people would be willing to pay?", 0, min=0, max=10, step=1),
        numericInput("id4", "Cost of Customer Acquisition: How easy is it to acquire a new customer?", 0, min=0, max=10, step=1),
        numericInput("id5", "Cost of Value Delivery: How much does it cost to create and deliver the offer?", 0, min=0, max=10, step=1),
        numericInput("id6", "Uniqueness of Offer: How unique is your offer versus the competition's? How easy is it to be copied?", 0, min=0, max=10, step=1),
        numericInput("id7", "Speed to Market: How quickly can you create and sell?", 0, min=0, max=10, step=1),
        numericInput("id8", "Up-Front Investment: How much do you have to invest before having an offer ready?", 0, min=0, max=10, step=1),
        numericInput("id9", "Up-Sell Potential: What related offers could you present to purchasing customers?", 0, min=0, max=10, step=1),
        numericInput("id10", "Evergreen Potential: Once the offer is created, how much work do you have to put into it to continue selling?", 0, min=0, max=10, step=1),
        
        submitButton ("Submit")
        
    ),	
    
    # output				
    mainPanel(
        h4("How attractive is your market idea?. Response the next question and evaluate your idea. Depending of your score,
           you will have an idea of how promising your idea is. "),
        
        h5("Your score is: "),
        verbatimTextOutput("result"),
        
        h5("Evaluation: "),
        verbatimTextOutput("prediction")
    )
))