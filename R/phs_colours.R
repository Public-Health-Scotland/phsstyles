#' @title Return hex value for specific named colours
#'
#' @description \code{phs_colours} takes named PHS colours and returns their
#' hex value \code{\link{phs_colour_values}}
#'
#' @details Named PHS colours can be phs-blue, phs-purple
#'
#' @param colourname A colour name or vector of colour names.
#' @param keep_names whether to keep the colour names with hex values.
#' Defaulted as FALSE.
#'
#' @examples
#' phs_colours("phs-blue")
#'
#' phs_colours(c("phs-blue", "phs-purple"))
#'
#' phs_colours()
#'
#' @export
phs_colours <- function(colourname = NULL, keep_names = FALSE){

  if (is.null(colourname)) {
    phs_colour_values
  } else if (any(!colourname %in% names(phs_colour_values))) {
      col_not_list <- colourname[!colourname %in% names(phs_colour_values)]
      msg <- paste("These colours are not available:",
                   paste(col_not_list, collapse = ','),
                   "\nPlease run phs_colours() to see all the available colours"
                   )
      stop(msg)
  } else if (!keep_names) {
      unname(phs_colour_values[colourname])
  } else {
      phs_colour_values[colourname]
  }
}

#' @rdname phs_colours
#' @examples
#' phs_colors("phs-blue")
#'
#' phs_colors(c("phs-blue", "phs-purple"))
#'
#' phs_colors()
#' @export
phs_colors <- phs_colours
