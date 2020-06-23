shinyServer(function(input, output, session) {
    
    # Get Dice Value --------------
    dice_value <- reactive({
        input$dice_button
        dice_value <- isolate(sample(1:6, size=1, prob = c(0/6, 0/6, 0/6, 0/6, 3/6, 3/6)))
    })
    
    # Display a Dice Simulation --------------------
    ## Display Text Result --------------------
    output$roll_dice_text <- renderText({
        print(dice_value())
    })
    
    ## Display Image Result --------------------
    output$dice_image <- renderImage({
        
        if(dice_value() == 1) {
            list(src = "img/Die1.jpeg", width = 200, contentType = "image/jpeg", alt = "Dice 1")
        } else if(dice_value() == 2) {
            list(src = "img/Die2.jpeg", width = 200, contentType = "image/jpeg", alt = "Dice 2")
        } else if(dice_value() == 3) {
            list(src = "img/Die3.jpeg", width = 200, contentType = "image/jpeg", alt = "Dice 3")
        } else if(dice_value() == 4) {
            list(src = "img/Die4.jpeg", width = 200, contentType = "image/jpeg", alt = "Dice 4")
        } else if(dice_value() == 5) {
            list(src = "img/Die5.jpeg", width = 200, contentType = "image/jpeg", alt = "Dice 5")
        } else {
            list(src = "img/Die6.jpeg", width = 200, contentType = "image/jpeg", alt = "Dice 6")
        }
        
    }, deleteFile = FALSE)  
    
})
