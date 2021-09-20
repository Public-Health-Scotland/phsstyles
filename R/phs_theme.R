#' @title Public Health Scotland theme for ggplot2 plots.
#'
#' @description This adds certain styles to ggplot2 plots that conform with
#' Public Health Scotland style guidelines.
#'
#' @examples
#' ggplot2::qplot(mpg, wt, data = mtcars) + phs_theme()
#' @export
phs_theme <- function() {

  fontStyle     <- "sans"
  gridLineColor <- grDevices::rgb(190 / 255, 190 / 255, 190 / 255)
  fontSize      <- 12

  ggplot2::theme(

    # Text format:
    # This sets the font, size, type and colour of text for the chart's title
    plot.title    = ggplot2::element_text(family = fontStyle,
                                          size = fontSize,
                                          face = "bold"),
    # This sets the font, size, type and colour of text for the chart's subtitle,
    # as well as setting a margin between the title and the subtitle
    plot.subtitle = ggplot2::element_text(family = fontStyle,
                                          size = fontSize,
                                          margin = ggplot2::margin(9,0,9,0)),


    # This leaves the caption text element empty, because it is set elsewhere
    # in the finalise plot function

    # Legend format
    # This sets the position and alignment of the legend, removes a title and
    # background for it and sets the requirements for any text within the legend.
    # The legend may often need some more manual tweaking when it comes to its
    # exact position based on the plot coordinates.
    legend.position   = "top",
    legend.text.align = 0,
    legend.background = ggplot2::element_blank(),
    legend.title      = ggplot2::element_blank(),
    legend.key        = ggplot2::element_blank(),
    legend.text       = ggplot2::element_text(family = fontStyle,
                                              size = fontSize),

    # Axis format
    # This sets the text font, size and colour for the axis test, as well as
    # setting the margins and removes lines and ticks.
    # In some cases, axis lines and axis ticks are things we would want to have
    # in the chart - the cookbook shows examples of how to do so.
    axis.title  = ggplot2::element_blank(),
    axis.text   = ggplot2::element_text(family = fontStyle,
                                        size = fontSize),
    axis.text.x = ggplot2::element_text(size  = fontSize, # X-Axis text
                               vjust = 0.5),
    axis.ticks  = ggplot2::element_blank(),
    axis.line   = ggplot2::element_blank(),

    axis.text.y = ggplot2::element_text(size   = fontSize,  # Y-Axis text
                               vjust  = 0.5,
                               hjust  = 1,
                               margin = ggplot2::margin(0,0,0,0,'pt')),


    # Grid Lines
    # This removes all minor gridlines and adds major vertical gridlines.
    # In many cases you will want to change this to remove vertical gridlines
    # and add horizontal gridlines. The cookbook shows you examples for doing so
    panel.grid.minor   = ggplot2::element_blank(),
    panel.grid.major.x = ggplot2::element_line(color=gridLineColor),
    panel.grid.major.y = ggplot2::element_blank(),

    # Blank Background
    # This sets the panel background as blank, removing the standard grey ggplot
    # background colour from the plot
    panel.background = ggplot2::element_blank()
  )
}
