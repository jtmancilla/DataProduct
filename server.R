# shiny server side code for each call

shinyServer(function(input, output){
    
   output$result <- renderPrint({input$id1 + input$id2 + input$id3 + input$id4 +input$id5 + input$id6 + input$id7 + input$id8+input$id9 + input$id10})
   output$prediction <- renderPrint({
       if((input$id1 + input$id2 + input$id3 + input$id4 +input$id5 + input$id6 + input$id7 + input$id8+input$id9 + input$id10)<1){("")}
       else if ((input$id1 + input$id2 + input$id3 + input$id4 +input$id5 + input$id6 + input$id7 + input$id8+input$id9 + input$id10)<50){("Chance your idea, focus your energy in other direction")}
       else if ((input$id1 + input$id2 + input$id3 + input$id4 +input$id5 + input$id6 + input$id7 + input$id8+input$id9 + input$id10) < 75) {("It´s good. But you will spend a lot of time and resources to achive your goals")}
       else {("Great!!, This idea could give you the life that you expect. Work in it")}
   })
  
       })