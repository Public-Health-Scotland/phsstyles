#' @title Return hex value for specific named colours
#'
#' @description \code{phs_colours} takes named PHS colours and returns their
#' hex value \code{\link{phs_colour_values}}
#'
#' @details Named PHS colours can be phs-blue, phs-purple
#'
#' @param colourname A colour name or vector of colour names.
#'
#' @examples
#' phs_colours("phs-blue")
#'
#' phs_colours(c("phs-blue", "phs-purple"))
#'
#' phs_colours()
#'
#' @export
phs_colours <- function(colourname = NULL){
  # load the vector phs_colour_values
  phs_colour_values <- phsstyles::phs_colour_values

  if(is.null(colourname)) {
    phs_colour_values
  } else if (any(!colourname %in% names(phs_colour_values))) {
      col_not_list <- colourname[!colourname %in% names(phs_colour_values)]
      msg <- paste("These colours are not available:",
                   paste(col_not_list, collapse = ','),
                   "\nPlease run phs_colours() to see all the available colours"
                   )
      stop(msg)
  } else {
      unname(phs_colour_values[colourname])
    }
}
