#' @export
collapsible_sidebar <- function(title, ...) {
  shiny::tags$aside(
    id = "sidebar",
    shiny::div(
      id = "sidebar-header",
      class = "d-flex",
      shiny::tags$button(class = "toggle-btn", shiny::icon("bars")),
      shiny::div(
        class = "sidebar-logo",
        title
      )
    ),
    shiny::tags$ul(
      class = "sidebar-nav",
      ...
    ),
    shiny::tags$script(
      'const hamBurger = document.querySelector(".toggle-btn");
      hamBurger.addEventListener("click", function () {
        document.querySelector("#sidebar").classList.toggle("expand");
      });'
    )
  )
}

#' @export
sidebar_item <- function(link_name, icon = NULL, ...) {
  shiny::tags$li(
    class = "sidebar-item",
    shiny::tags$a(
      class = "sidebar-link",
      icon,
      shiny::tags$span(link_name),
      ... 
    )
  )
}

#' @export
inner_item <- function(link_name, ...) {
  shiny::tags$li(
    class = "sidebar-item",
    shiny::tags$a(
      class = "sidebar-link",
      link_name,
      ... 
    )
  )
}

#' @export
sidebar_collap_item <- function(id, title, icon, ...) {
  shiny::tags$li(
    class = "sidebar-item",
    shiny::tags$a(
      class = "sidebar-link collapsed has-dropdown",
      `data-bs-toggle` = "collapse",
      `data-bs-target` = paste0("#", id),
      `aria-expanded`  = "false",
      `aria-controls`  = id,
      icon,
      shiny::tags$span(title)
    ),
    shiny::tags$ul(
      id = id,
      class = "sidebar-dropdown list-unstyled collapse",
      `data-bs-parent` = "#sidebar",
      ...
    )
  )
}
