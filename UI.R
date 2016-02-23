library(shiny)


shinyUI(navbarPage(theme = "bootstrap.css","Principal Component Analysis (PCA)",
                   tabPanel("Plot",
                            sidebarLayout(
                                    sidebarPanel(
                                            selectInput("dataset", "Choose a dataset:", 
                                                        choices = c("rock", "iris","USA arrests",
                                                                    "air quality")),
                                            br(),
                                            p("Choose an R dataset to demonstrate the use of 
                                              Principal Component Analysis.")
                                    ),
                                    mainPanel(
                                            h4("PC1 x PC2 scatterplot", align = "center"),
                                            plotOutput('plot1')
                                    )
                            )
                   ),
                   tabPanel("Summary",
                            h4("PC loadings"),
                            tableOutput('table1'),
                            h4("PC standard deviation"),
                            tableOutput('table2')
                   ),
                   
                   tabPanel("Documentation",
                            sidebarLayout(
                                    sidebarPanel(
                                            p("Principal Component Analysis is an unsupervised statistical
                                              learning tool, mostly used in exploratory data analysis.
                                              It finds a low-dimensional representation
                                              of a data set that contains as much as possible of the 
                                              variation."),
                                            p("PCA is mathematically defined as an orthogonal linear
                                              transformation that transforms the data to a new coordinate
                                              system such that the greatest variance by some projection 
                                              of the data comes to lie on the first coordinate (called 
                                              the first principal component), the second greatest 
                                              variance on the second coordinate, and so on. ", 
                                              a("[Wikipedia]", 
                                                href = "https://en.wikipedia.org/wiki/
                                                Principal_component_analysis"))
                                            
                                            ),
                                    mainPanel(
                            p("This app demonstrates the use of Prncipal Component Analysis on
                              four sets of data available on the ", code("datasets"), " R package."),
                            br(),
                            code("rock"),
                            br(),
                            p("A data frame with 48 rows and 4 numeric columns."),
                            p("The names of the columns are:"),
                            p("[,1]    ",em ("area"),"    area of pores space, in pixels out of 256 by 256"),
                            p("[,2]    ",em ("peri"),"	 perimeter in pixels"),
                            p("[,3]    ",em ("shape"),"	 perimeter/sqrt(area)"),
                            p("[,4]    ",em ("perm"),"	 permeability in milli-Darcies"),
                            br(),
                            code("iris"),
                            br(),
                            p("iris is a data frame with 150 cases (rows) and 5 variables (columns) 
                              named Sepal.Length, Sepal.Width, Petal.Length, Petal.Width, and Species"),
                            p("Here, we are using only the numerical variables to calculate the PCAs."),
                            br(),
                            code("USA arrests"),
                            br(),
                            p("This data set contains statistics, in arrests per 100,000 residents for
                              assault, murder, and rape in each of the 50 US states in 1973. 
                              Also given is the percent of the population living in urban areas."),
                            p("The columns of the data frame are:"),
                            p("[,1]        ",em("Murder")," Murder arrests (per 100,000)"),
                            p("[,2]        ",em("Assault")," Assault arrests (per 100,000)"),
                            p("[,3]        ",em("UrbanPop")," Percent urban population"),
                            p("[,4]        ",em("Rape")," Rape arrests (per 100,000)"),
                            br(),
                            code("air quality"),
                            br(),
                            p("Daily air quality measurements in New York, May to September 1973."),
                            p("A data frame with 154 observations on 4 variables (columns):"),
                            p("[,1]        ",em("Ozone")," Ozone (ppb)"),
                            p("[,2]        ",em("Solar.R")," Solar R (lang)"),
                            p("[,3]        ",em("Wind")," Wind (mph)"),
                            p("[,4]        ",em("Temp")," Temperature (degrees F)"),
                            p("The original dataset also displayed the Day and Month of the measurement, 
                              but those were discarded in the present analysis.")
                            
                            
                                    )        
                            )
                            )
                            )
                   )
                   