library(shinydashboard)
# 1. Header ------
header <- dashboardHeader(title = "Simulation")

# 2. Sidebar ------
sidebar <- dashboardSidebar(
    sidebarMenu(
        menuItem("Roll a Dice", tabName = "roll_dice", 
                 icon = icon(name = "gamepad", lib = "font-awesome"))
    )
    
)

# 3. Body ------
body <- dashboardBody(
    
    ### 3.1. Roll a Dice ----------
    tabItem(tabName = "roll_dice",
            # tags$h2("심심할 때 주사위 던져보기"),
            fluidRow(
                # Column 1
                column(width = 2,
                       actionButton("dice_button", "Run")
                ),
                column(width = 6,
                       imageOutput("dice_image", height = 300)
                )
            ),
            tags$br(),
            tags$h2("result:"),
            verbatimTextOutput("roll_dice_text")
    )
    
)

ui <- dashboardPage(header, sidebar, body)