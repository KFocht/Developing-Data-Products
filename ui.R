library(shiny)

shinyUI(pageWithSidebar(
    headerPanel("HOW WILL THIS ASSIGNMENT AFFECT MY GRADE?"),
    sidebarPanel(
        h3('Category 1'),
        h4('Note:  This MUST be the category the new assignment will be assigned to.'),
        selectInput('wt1', 'Weighted Value', choices = c(100, 95, 90, 85, 80, 75,
                                                         70, 65, 60, 55, 50, 45,
                                                         40, 35, 30, 25, 20, 15,
                                                         10, 5, 0),
                    selected = 100),
        
        numericInput('tpe1', 'Total Points Earned', value = 0),
        numericInput('tpp1', 'Total Points Possible', value = 0),
               
        h3('Category 2'),
        selectInput('wt2', 'Weighted Value', choices = c(100, 95, 90, 85, 80, 75,
                                                         70, 65, 60, 55, 50, 45,
                                                         40, 35, 30, 25, 20, 15,
                                                         10, 5, 0),
                    selected = 0),
        
        numericInput('tpe2', 'Total Points Earned', value = 0),
        numericInput('tpp2', 'Total Points Possible', value = 0),
                
        h3('Category 3'),
        selectInput('wt3', 'Weighted Value', choices = c(100, 95, 90, 85, 80, 75,
                                                         70, 65, 60, 55, 50, 45,
                                                         40, 35, 30, 25, 20, 15,
                                                         10, 5, 0),
                    selected = 0),
        
        numericInput('tpe3', 'Total Points Earned', value = 0),
        numericInput('tpp3', 'Total Points Possible', value = 0),
                
        h3('Category 4'),
        selectInput('wt4', 'Weighted Value', choices = c(100, 95, 90, 85, 80, 75,
                                                         70, 65, 60, 55, 50, 45,
                                                         40, 35, 30, 25, 20, 15,
                                                         10, 5, 0),
                    selected = 0),
        
        numericInput('tpe4', 'Total Points Earned', value = 0),
        numericInput('tpp4', 'Total Points Possible', value = 0),
                
        h3('Category 5'),
        selectInput('wt5', 'Weighted Value', choices = c(100, 95, 90, 85, 80, 75,
                                                         70, 65, 60, 55, 50, 45,
                                                         40, 35, 30, 25, 20, 15,
                                                         10, 5, 0),
                    selected = 0),
        
        numericInput('tpe5', 'Total Points Earned', value = 0),
        numericInput('tpp5', 'Total Points Possible', value = 0)
                
        ),
    
    mainPanel(
        h4('Use this app to figure out the score you need to get on your next assignment for the grade you want!'),
        h4('In the left sidebar, complete the required fields for the categories and weights your teacher uses.
           You may use up to 5 categories.'),
        h4('Example:  In your class, tests are worth 70% of the grade and assignments are worth 30% of your grade.
           You have an upcoming test worth 100 points.  In the grey sidebar, You would fill out Category 1
           with weight 70 and category 2 with weight 30.  Enter the points you have received so far in each category
           and the total number of points possible for each.  You would then enter 100 in the box below for
           the upcoming assignment.'),
        numericInput('nsp', 'What are the points possible for the new assignment?', value = 0),
        h3("Score Needed on Assignments"),
        h4('The score you need to obtain on this assignment to have an A (90% or above) in the class is'),
        verbatimTextOutput('scoreA'),
        h4('The score you need to obtain on this assignment to have an B (80% - 89.9%) in the class is'),
        verbatimTextOutput('scoreB'),
        h4('The score you need to obtain on this assignment to have an C (70% - 79.9%) in the class is'),
        verbatimTextOutput('scoreC'),
        h4('The score you need to obtain on this assignment to have an D (60% - 69.9%) in the class is'),
        verbatimTextOutput('scoreD')
        )
    ))