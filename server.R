library(shiny)
library(datasets)

air <- complete.cases(airquality)
airquality <- airquality[air,]

shinyServer(function(input, output, session) {
        
        datasetInput <- reactive({
                switch(input$dataset,
                       "rock" = rock[,1:4],
                       "iris" = iris[,1:4],
                       "USA arrests" = USArrests[,1:4],
                       "air quality" = airquality[,1:4])
        })     
        
        pc <- reactive ({
                prcomp(datasetInput(), center = TRUE, scale. = TRUE)
        })
        
        output$plot1 <- renderPlot({
                par(mar = c(5.1, 4.1, 0, 1))
                biplot(pc(),xlab = "First principal component",
                       ylab = "Second principal component")
        })
        
        output$table1 <- renderTable({
                pc()
        })
        
        output$table2 <- renderTable({
                summary(pc())
        })
})