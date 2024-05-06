library(shiny)
library(bslib)

ui <- fluidPage(
  theme = bslib::bs_theme(version = "5"),
  tags$head(tags$link(href = "style.css", rel = "stylesheet")),
  div(
    class = "wrapper",
    tags$aside(
      id = "sidebar",
      div(
        id = "sidebar-head",
        class = "d-flex",
        tags$button(class = "toggle-btn", icon("bars")),
        div(
          class = "sidebar-logo",
          tags$a("Shiny Example")
        )
      ),
      tags$ul(
        class = "sidebar-nav",
        tags$li(
          class = "sidebar-item",
          tags$a(
            class = "sidebar-link",
            icon("home"),
            tags$span("Home")
          )
        ),
        tags$li(
          class = "sidebar-item",
          tags$a(
            class = "sidebar-link",
            icon("chart-simple"),
            tags$span("Charts")
          )
        ),
        tags$li(
          class = "sidebar-item",
          tags$a(
            class = "sidebar-link collapsed has-dropdown",
            `data-bs-toggle` = "collapse",
            `data-bs-target` = "#auth",
            `aria-expanded`  = "false",
            `aria-controls`  = "auth",
            icon("user"),
            tags$span("Auth")
          ),
          tags$ul(
            id = "auth",
            class = "sidebar-dropdown list-unstyled collapse",
            `data-bs-parent` = "#sidebar",
            tags$li(
              class = "sidebar-item",
              tags$a(href = "#", class = "sidebar-link", "Register")
            ),
            tags$li(
              class = "sidebar-item",
              tags$a(href = "#", class = "sidebar-link", "Register")
            )
          )
        )
      )
    ),
    div(
      class = "main"
    )
  ),
  tags$script(src = "main.js")
)

server <- function(input, output, session) {

}

shinyApp(ui, server)