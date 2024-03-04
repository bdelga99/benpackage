#' My theme function
#'
#' @param background A color to set the theme's background.
#' @param line A style for the lines around the border.
#' @param panel A color to set the theme's panel.
#'
#' @return A ggplot theme.
#' @export
#'
#' @examples
#' my_theme("red", "longdash", "yellow")
my_theme <- function(background = "darkblue", line = "dashed", panel = "lightskyblue") {
    theme <- ggplot2::theme(plot.background = ggplot2::element_rect(fill = background), panel.border = ggplot2::element_rect(linetype = line, 
        fill = NA), panel.background = ggplot2::element_rect(fill = panel, colour = "grey50"))
    return(theme)
}