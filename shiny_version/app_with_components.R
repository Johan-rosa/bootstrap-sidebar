library(shiny)
library(bslib)
box::use(components/sidebar[...])

ui <- fluidPage(
  theme = bslib::bs_theme(version = "5"),
  tags$head(tags$link(href = "style.css", rel = "stylesheet")),
  div(
    class = "wrapper",
    collapsible_sidebar(
      title = shiny::a("Shiny Example"),
      sidebar_item("Home", icon = shiny::icon("home")),
      sidebar_item("Stats", icon = shiny::icon("chart-simple")),
      sidebar_collap_item(
        id = "test",
        title = "Account",
        icon = shiny::icon("person"),
        inner_item("Innert bt 1"),
        inner_item("Innert bt 2")
      )
    ),
    div(
      class = "main"
    )
  )
)

server <- function(input, output, session) {

}

shinyApp(ui, server)