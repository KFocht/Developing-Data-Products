# shinyServer(function(input, output) {
#     wt1 <- reactive({as.numeric(input$wt1)/100
# })
# 
# cat1 <- reactive({
#     if (wt1() > 0) {
#     x <- wt1() * (input$tpe1/input$tpp1)
# } else {
#     x <- 0
# }
# x
# })
# output$test <- cat1
# })

shinyServer(function(input, output) {
    
    nseA <- reactive({
        wt1 <- as.numeric(input$wt1)/100
        wt2 <- as.numeric(input$wt2)/100
        wt3 <- as.numeric(input$wt3)/100
        wt4 <- as.numeric(input$wt4)/100
        wt5 <- as.numeric(input$wt5)/100
        
        if (input$tpp1 > 0) {
            cat1 <- wt1 * (input$tpe1/input$tpp1)
        } else {
            cat1 <- 0
        }
        
        if (input$tpp2 > 0) {
            cat2 <- wt2 * (input$tpe2/input$tpp2)
        } else {
            cat2 <- 0
        }
        
        if (input$tpp3 > 0) {
            cat3 <- wt3 * (input$tpe3/input$tpp3)
        } else {
            cat3 <- 0
        }
        
        if (input$tpp4 > 0) {
            cat4 <- wt4 * (input$tpe4/input$tpp4)
        } else {
            cat4 <- 0
        }
        
        if (input$tpp5 > 0) {
            cat5 <- wt5 * (input$tpe5/input$tpp5)
        } else {
            cat5 <- 0
        }
        
        score <- (((input$tpp1 + input$nsp)/wt1) * (.9 - cat2 - cat3 - cat4 - cat5) - input$tpe1)
        
        round(score, digits = 2)
        
    })
    
    nseB <- reactive({
        wt1 <- as.numeric(input$wt1)/100
        wt2 <- as.numeric(input$wt2)/100
        wt3 <- as.numeric(input$wt3)/100
        wt4 <- as.numeric(input$wt4)/100
        wt5 <- as.numeric(input$wt5)/100
        
        if (input$tpp1 > 0) {
            cat1 <- wt1 * (input$tpe1/input$tpp1)
        } else {
            cat1 <- 0
        }
        
        if (input$tpp2 > 0) {
            cat2 <- wt2 * (input$tpe2/input$tpp2)
        } else {
            cat2 <- 0
        }
        
        if (input$tpp3 > 0) {
            cat3 <- wt3 * (input$tpe3/input$tpp3)
        } else {
            cat3 <- 0
        }
        
        if (input$tpp4 > 0) {
            cat4 <- wt4 * (input$tpe4/input$tpp4)
        } else {
            cat4 <- 0
        }
        
        if (input$tpp5 > 0) {
            cat5 <- wt5 * (input$tpe5/input$tpp5)
        } else {
            cat5 <- 0
        }
        
        score <- (((input$tpp1 + input$nsp)/wt1) * (.8 - cat2 - cat3 - cat4 - cat5) - input$tpe1)
        
        round(score, digits = 2)
        
    })
    
    nseC <- reactive({
        wt1 <- as.numeric(input$wt1)/100
        wt2 <- as.numeric(input$wt2)/100
        wt3 <- as.numeric(input$wt3)/100
        wt4 <- as.numeric(input$wt4)/100
        wt5 <- as.numeric(input$wt5)/100
        
        if (input$tpp1 > 0) {
            cat1 <- wt1 * (input$tpe1/input$tpp1)
        } else {
            cat1 <- 0
        }
        
        if (input$tpp2 > 0) {
            cat2 <- wt2 * (input$tpe2/input$tpp2)
        } else {
            cat2 <- 0
        }
        
        if (input$tpp3 > 0) {
            cat3 <- wt3 * (input$tpe3/input$tpp3)
        } else {
            cat3 <- 0
        }
        
        if (input$tpp4 > 0) {
            cat4 <- wt4 * (input$tpe4/input$tpp4)
        } else {
            cat4 <- 0
        }
        
        if (input$tpp5 > 0) {
            cat5 <- wt5 * (input$tpe5/input$tpp5)
        } else {
            cat5 <- 0
        }
        
        score <- (((input$tpp1 + input$nsp)/wt1) * (.7 - cat2 - cat3 - cat4 - cat5) - input$tpe1)
        
        round(score, digits = 2)
        
    })
    
    nseD <- reactive({
        wt1 <- as.numeric(input$wt1)/100
        wt2 <- as.numeric(input$wt2)/100
        wt3 <- as.numeric(input$wt3)/100
        wt4 <- as.numeric(input$wt4)/100
        wt5 <- as.numeric(input$wt5)/100
        
        if (input$tpp1 > 0) {
            cat1 <- wt1 * (input$tpe1/input$tpp1)
        } else {
            cat1 <- 0
        }
        
        if (input$tpp2 > 0) {
            cat2 <- wt2 * (input$tpe2/input$tpp2)
        } else {
            cat2 <- 0
        }
        
        if (input$tpp3 > 0) {
            cat3 <- wt3 * (input$tpe3/input$tpp3)
        } else {
            cat3 <- 0
        }
        
        if (input$tpp4 > 0) {
            cat4 <- wt4 * (input$tpe4/input$tpp4)
        } else {
            cat4 <- 0
        }
        
        if (input$tpp5 > 0) {
            cat5 <- wt5 * (input$tpe5/input$tpp5)
        } else {
            cat5 <- 0
        }
        
        score <- (((input$tpp1 + input$nsp)/wt1) * (.6 - cat2 - cat3 - cat4 - cat5) - input$tpe1)
        
        round(score, digits = 2)
        
    })
              
    output$scoreA <- nseA
    output$scoreB <- nseB
    output$scoreC <- nseC
    output$scoreD <- nseD
    
    
})